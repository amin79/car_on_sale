import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/vin_data.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

abstract class VinRepository {
  FutureEither<Either<VinData, List<VinData>>> fetchAuctionData(String vin);
  FutureEither<VinData> saveVinData(VinData vinData);
  void getVinDataList();
  ValueNotifier<List<VinData>> get vinDataListNotifier;
}
