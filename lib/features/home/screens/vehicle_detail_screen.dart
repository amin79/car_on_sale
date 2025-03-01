import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/shared/widgets/text_body_large.dart';
import 'package:car_on_sale/shared/widgets/text_headline_medium.dart';
import 'package:car_on_sale/shared/widgets/text_title_large.dart';
import 'package:car_on_sale/shared/widgets/text_title_medium.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VehicleDetailScreen extends StatelessWidget {
  const VehicleDetailScreen({super.key, required this.vehicle});

  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vehicle Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                // width: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(width: 2, color: Colors.grey),
                  image: DecorationImage(
                      image: const NetworkImage(
                        "https://picsum.photos/300/300",
                      ),
                      onError: (exception, stackTrace) {},
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.p18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitleLarge(text: "${vehicle.make} ${vehicle.model}"),
                  TextBodyLarge(text: "ID: ${vehicle.id}"),
                  gapH24,
                  Row(
                    children: [
                      Expanded(
                          child: TextHeadlineMedium(text: "€${vehicle.price}")),
                      TextTitleMedium(
                        text: "${vehicle.origin}",
                        color: Colors.green,
                      )
                    ],
                  ),
                  const Divider(),
                  if (vehicle.createdAt != null)
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextBodyLarge(
                        text: DateFormat.yMMMd().format(
                          vehicle.createdAt!,
                        ),
                      ),
                    ),
                  gapH24,
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text("Call Seller"),
                        icon: const Icon(Icons.call),
                      ),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text("Email Seller"),
                        icon: const Icon(Icons.email),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
