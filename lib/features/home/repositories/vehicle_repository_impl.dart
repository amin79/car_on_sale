import 'dart:async';
import 'dart:convert';
import 'package:car_on_sale/core/cos_challenge.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/failure/failure.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:car_on_sale/features/home/repositories/vehicle_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vehicle_repository_impl.g.dart';

class VehicleRepositoryImpl implements VehicleRepository {
  final Ref ref;
  late Box<Vehicle> _vehicleDataBox;
  @override
  late ValueNotifier<List<Vehicle>> vehicleDataListNotifier;

  VehicleRepositoryImpl(this.ref) {
    _init();
  }

  Future<void> _init() async {
    vehicleDataListNotifier = ValueNotifier([]);
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(VehicleAdapter());
    }
    _vehicleDataBox = await Hive.openBox<Vehicle>('vehicleDataBox');
    Future.delayed(Duration.zero, () {
      getVehicleList();
    });
    getVehicleList();
  }

  @override
  List<Vehicle> get vinList => vehicleDataListNotifier.value;

  @override
  FutureEither<Either<Vehicle, List<Vehicle>>> fetchAuctionData(
      String vin) async {
    try {
      final currentUser = ref.read(currentUserProvider);
      final userId = currentUser?.id;

      if (userId == null) {
        return left(AuthFailure());
      }

      final response = await CosChallenge.httpClient.get(
        Uri.https('anyUrl'),
        headers: {CosChallenge.user: userId},
      );

      final data = jsonDecode(response.body.trim());
      if (response.statusCode == 200) {
        final vehicleData = Vehicle.fromJson(data);

        // Save the vinData to the local database
        final result = await saveVehicle(vehicleData);
        return result.fold((failure) {
          return left(failure);
        }, (savedVehicle) {
          return right(Left(savedVehicle));
        });
      }

      if (response.statusCode == 300) {
        final multipleVehicles =
            (data as List).map((e) => Vehicle.fromJson(e)).toList();
        return right(Right(multipleVehicles));
      }

      return left(ServerFailure(error: data['message']));
    } on http.ClientException {
      return left(AuthFailure());
    } on TimeoutException {
      return left(NetworkFailure());
    } catch (e) {
      return left(GeneralFailure(error: e.toString()));
    }
  }

  @override
  FutureEither<Vehicle> saveVehicle(Vehicle vinData) async {
    try {
      await _vehicleDataBox.put(vinData.id, vinData);
      getVehicleList();
      return right(vinData);
    } catch (e) {
      return left(GeneralFailure(error: e.toString()));
    }
  }

  //get the list of VinData from the local database
  @override
  void getVehicleList() {
    try {
      vehicleDataListNotifier.value = _vehicleDataBox.values.toList();
    } catch (e) {
      vehicleDataListNotifier.value = [];
    }
  }
}

@riverpod
VehicleRepository vehicleRepository(Ref ref) {
  return VehicleRepositoryImpl(ref);
}

final vehicleDataListNotifierProvider =
    ChangeNotifierProvider<ValueNotifier<List<Vehicle>>>((ref) {
  return ref.watch(vehicleRepositoryProvider).vehicleDataListNotifier;
});

final vehicleDataListProvider = Provider<List<Vehicle>>((ref) {
  return ref.watch(vehicleDataListNotifierProvider).value;
});
