import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/routes/provider/route.provider.dart';
import 'package:car_on_sale/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VehicleTile extends ConsumerWidget {
  const VehicleTile({
    super.key,
    required this.vinData,
  });

  final Vehicle vinData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(goRouterProvider)
            .pushNamed(RouteNames.vehicleDetails.name, extra: vinData);
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
