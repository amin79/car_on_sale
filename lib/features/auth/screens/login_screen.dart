import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/shared/widgets/app_text_form_field.dart';
import 'package:car_on_sale/shared/widgets/text_headline_large.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextHeadlineLarge(text: 'Login Screen'),
                gapH24,
                Form(
                  child: Column(
                    children: [
                      AppTextFormField(
                        labelText: 'Email',
                        hintText: "Please enter your email",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: const Icon(Icons.email),
                      ),
                      gapH16,
                      AppTextFormField(
                        labelText: 'Password',
                        hintText: "Please enter your password",
                        controller: passwordController,
                        obscureText: true,
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      gapH24,
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
