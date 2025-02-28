import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:car_on_sale/features/home/controllers/vin_controller_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider).currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CarOnSale"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to CarOnSale ${user?.email}"),
            ElevatedButton(
              onPressed: () {
                ref.read(userRepositoryProvider).signOut();
              },
              child: const Text("Logout"),
            ),
            gapH32,
            ElevatedButton(
              onPressed: () {
                ref.read(vinControllerProvider).fetchAuctionData("vin");
              },
              child: const Text("fetch data"),
            ),
          ],
        ),
      ),
    );
  }
}
