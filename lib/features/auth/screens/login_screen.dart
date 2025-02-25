import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(user?.name ?? "No user"),
            ElevatedButton(
              onPressed: () {
                ref.read(userRepositoryProvider).signIn(const User(
                    id: "1",
                    email: "amin.seraji@gmail.com",
                    name: "Amin Seraji"));
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
