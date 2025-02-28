import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/vin_data.dart';
import 'package:fpdart/fpdart.dart';

abstract class VinController {
  FutureEither<Either<VinData, List<VinData>>> fetchAuctionData(String vin);
  Future<void> saveVinData(VinData vinData);
}
