import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/features/home/screens/widgets/vehicle_list_widget.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
    required this.searchResult,
    this.addOnSelect = false,
  });

  final ValueNotifier<List<Vehicle>> searchResult;
  final bool addOnSelect;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 2),
                color: Colors.grey[200]),
            width: MediaQuery.of(context).size.width - 48,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(Sizes.p10),
              child: VehicleListWidget(
                vehicleList: searchResult.value,
                addOnSelect: addOnSelect,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {
                searchResult.value = [];
              },
              icon: const Icon(Icons.close),
            ),
          )
        ],
      ),
    );
  }
}
