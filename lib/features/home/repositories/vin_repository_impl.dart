import 'dart:async';
import 'dart:convert';
import 'package:car_on_sale/core/cos_challenge.dart';
import 'package:car_on_sale/domain/models/vin_data.dart';
import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/failure/failure.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:car_on_sale/features/home/repositories/vin_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vin_repository_impl.g.dart';

class VinRepositoryImpl implements VinRepository {
  final Ref ref;

  VinRepositoryImpl(this.ref) {
    _init();
  }
  late Box<VinData> _vinDataBox;

  Future<void> _init() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(VinDataAdapter());
    }
    _vinDataBox = await Hive.openBox<VinData>('vinDataBox');

    getVinDataList();
  }

  @override
  ValueNotifier<List<VinData>> get vinDataListNotifier => ValueNotifier([]);

  @override
  FutureEither<Either<VinData, List<VinData>>> fetchAuctionData(
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
        final vinData = VinData.fromJson(data);

        // Save the vinData to the local database
        final result = await saveVinData(vinData);
        return result.fold((failure) {
          return left(failure);
        }, (savedVin) {
          return right(Left(savedVin));
        });
      }

      if (response.statusCode == 300) {
        final multipleVins =
            (data as List).map((e) => VinData.fromJson(e)).toList();
        return right(Right(multipleVins));
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
  FutureEither<VinData> saveVinData(VinData vinData) async {
    try {
      await _vinDataBox.put(vinData.id, vinData);
      getVinDataList();
      return right(vinData);
    } catch (e) {
      return left(GeneralFailure(error: e.toString()));
    }
  }

  //get the list of VinData from the local database
  @override
  void getVinDataList() {
    try {
      vinDataListNotifier.value = _vinDataBox.values.toList();
    } catch (e) {
      vinDataListNotifier.value = [];
    }
  }
}

@riverpod
VinRepository vinRepository(Ref ref) {
  return VinRepositoryImpl(ref);
}

final vinDataListNotifierProvider =
    ChangeNotifierProvider<ValueNotifier<List<VinData>>>((ref) {
  return ref.watch(vinRepositoryProvider).vinDataListNotifier;
});

final vinDataListProvider = Provider<List<VinData>>((ref) {
  return ref.watch(vinDataListNotifierProvider).value;
});
