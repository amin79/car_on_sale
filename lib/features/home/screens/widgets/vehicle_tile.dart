import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleTile extends StatelessWidget {
  const VehicleTile({
    super.key,
    required this.vinData,
  });

  final Vehicle vinData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate to details screen
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: Sizes.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(width: 2, color: Colors.grey),
                image: DecorationImage(
                    image: const NetworkImage("https://picsum.photos/300/300"),
                    onError: (exception, stackTrace) {},
                    fit: BoxFit.fill),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID: ${vinData.id}"),
                  Text("Make: ${vinData.make}"),
                  Text("Model: ${vinData.model}"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
