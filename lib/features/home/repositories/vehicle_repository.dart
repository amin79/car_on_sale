import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

abstract class VehicleRepository {
  FutureEither<Either<Vehicle, List<Vehicle>>> fetchAuctionData(String vin);
  FutureEither<Vehicle> saveVehicle(Vehicle vehicle);
  void getVehicleList();
  ValueNotifier<List<Vehicle>> get vehicleDataListNotifier;
  List<Vehicle> get vinList;
}
