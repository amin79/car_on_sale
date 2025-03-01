import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/extensions/failure_translate.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/features/home/controllers/vehicle_controller.dart';
import 'package:car_on_sale/features/home/repositories/vehicle_repository.dart';
import 'package:car_on_sale/features/home/repositories/vehicle_repository_impl.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vehicle_controller_impl.g.dart';

class VehicleControllerImpl extends VehicleController {
  final VehicleRepository _vinRepository;

  VehicleControllerImpl(this._vinRepository);

  @override
  FutureEither<Either<Vehicle, List<Vehicle>>> fetchAuctionData(
      String vin) async {
    EasyLoading.show();

    final result = await _vinRepository.fetchAuctionData(vin);

    return result.fold(
      (failure) {
        EasyLoading.showError(failure.translate,
            duration: const Duration(seconds: 10),
            dismissOnTap: true,
            maskType: EasyLoadingMaskType.black);
        return Left(failure);
      },
      (success) {
        EasyLoading.dismiss();
        return Right(success);
      },
    );
  }

  @override
  Future<void> saveVehicle(Vehicle vinData) async {
    await _vinRepository.saveVehicle(vinData);
  }
}

@riverpod
VehicleController vinController(Ref ref) {
  final vinRepository = ref.read(vehicleRepositoryProvider);
  return VehicleControllerImpl(vinRepository);
}
