import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/features/home/screens/widgets/vehicle_tile.dart';
import 'package:flutter/material.dart';

class VehicleListWidget extends StatelessWidget {
  const VehicleListWidget({
    super.key,
    required this.vehicleList,
  });

  final List<Vehicle> vehicleList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: vehicleList.length,
        itemBuilder: (context, index) {
          final vinData = vehicleList[index];
          return VehicleTile(vinData: vinData);
        },
      ),
    );
  }
}
