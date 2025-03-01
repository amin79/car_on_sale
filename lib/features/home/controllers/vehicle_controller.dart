import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:fpdart/fpdart.dart';

abstract class VehicleController {
  FutureEither<Either<Vehicle, List<Vehicle>>> fetchAuctionData(String vin);
  Future<void> saveVehicle(Vehicle vinData);
}
