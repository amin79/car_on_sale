import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/extensions/failure_translate.dart';
import 'package:car_on_sale/domain/models/vin_data.dart';
import 'package:car_on_sale/features/home/controllers/vin_controller.dart';
import 'package:car_on_sale/features/home/repositories/vin_repository.dart';
import 'package:car_on_sale/features/home/repositories/vin_repository_impl.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vin_controller_impl.g.dart';

class VinControllerImpl extends VinController {
  final VinRepository _vinRepository;

  VinControllerImpl(this._vinRepository);

  @override
  FutureEither<Either<VinData, List<VinData>>> fetchAuctionData(
      String vin) async {
    EasyLoading.show();

    final result = await _vinRepository.fetchAuctionData(vin);

    return result.fold(
      (failure) {
        EasyLoading.showError(failure.translate);
        return Left(failure);
      },
      (success) {
        EasyLoading.dismiss();
        return Right(success);
      },
    );
  }

  @override
  Future<void> saveVinData(VinData vinData) async {
    await _vinRepository.saveVinData(vinData);
  }
}

@riverpod
VinController vinController(Ref ref) {
  final vinRepository = ref.read(vinRepositoryProvider);
  return VinControllerImpl(vinRepository);
}
