import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/features/auth/controllers/user_controller_impl.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:car_on_sale/features/home/controllers/vehicle_controller_impl.dart';
import 'package:car_on_sale/features/home/repositories/vehicle_repository_impl.dart';
import 'package:car_on_sale/features/home/screens/widgets/search_result_list.dart';
import 'package:car_on_sale/features/home/screens/widgets/vehicle_list_widget.dart';
import 'package:car_on_sale/routes/provider/route.provider.dart';
import 'package:car_on_sale/routes/route_names.dart';
import 'package:car_on_sale/shared/widgets/app_text_form_field.dart';
import 'package:car_on_sale/shared/widgets/text_title_large.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider).currentUser;
    final cachedVehicleDataList = ref.watch(vehicleDataListProvider);

    final vehicleTextController = useTextEditingController();

    final searchResult = useState<List<Vehicle>>([]);

    Future<void> handleSearch() async {
      searchResult.value = [];
      final result = await ref
          .read(vehicleControllerProvider)
          .fetchAuctionData(vehicleTextController.text);
      result.fold(
        (_) {},
        (success) {
          success.fold(
            (vehicle) {
              ref
                  .read(goRouterProvider)
                  .pushNamed(RouteNames.vehicleDetails.name, extra: vehicle);
            },
            (vehicleList) {
              searchResult.value = vehicleList;
            },
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Hi ${user?.email}"),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(userControllerProvider).signOut();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p24),
        child: Center(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextFormField(
                    hintText: "Enter VIN",
                    controller: vehicleTextController,
                    suffixIcon: IconButton(
                      onPressed: handleSearch,
                      icon: const Icon(Icons.search),
                    ),
                  ),
                  gapH32,
                  if (cachedVehicleDataList.isNotEmpty) ...[
                    const TextTitleLarge(text: "Previous Searches"),
                    gapH16,
                    Expanded(
                        child: VehicleListWidget(
                            vehicleList: cachedVehicleDataList)),
                  ] else ...[
                    const TextTitleLarge(text: "No Previous Searches"),
                    const Expanded(
                      child: SizedBox(),
                    )
                  ]
                ],
              ),
              if (searchResult.value.isNotEmpty)
                SearchResultList(searchResult: searchResult, addOnSelect: true),
            ],
          ),
        ),
      ),
    );
  }
}
