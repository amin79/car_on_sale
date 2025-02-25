import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
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
            const Text("Welcome to CarOnSale"),
            ElevatedButton(
                onPressed: () {
                  ref.read(userRepositoryProvider).signOut();
                },
                child: const Text("Logout")),
          ],
        ),
      ),
    );
  }
}
