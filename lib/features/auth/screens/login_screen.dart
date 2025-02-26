import 'package:car_on_sale/config/app_sizes.dart';
import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/controllers/user_controller_impl.dart';
import 'package:car_on_sale/shared/widgets/app_text_form_field.dart';
import 'package:car_on_sale/shared/widgets/text_headline_large.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void handleSigIn() {
      if (formKey.currentState!.validate()) {
        final user = User(
          email: emailController.text,
          password: passwordController.text,
        );
        ref.read(userControllerProvider).signIn(user);
      }
    }

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
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        labelText: 'Email',
                        hintText: "Please enter your email",
                        controller: emailController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: const Icon(Icons.email),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      gapH16,
                      AppTextFormField(
                        labelText: 'Password',
                        hintText: "Please enter your password",
                        textCapitalization: TextCapitalization.none,
                        controller: passwordController,
                        obscureText: true,
                        prefixIcon: const Icon(Icons.lock),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ]),
                      ),
                      gapH24,
                      ElevatedButton(
                        onPressed: handleSigIn,
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
