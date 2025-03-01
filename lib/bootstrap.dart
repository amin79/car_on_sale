import 'dart:ui';

import 'package:car_on_sale/app.dart';
import 'package:car_on_sale/config/environment.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> bootstrap({required Environment environment}) async {
  Environment.current = environment;

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterError.onError = (errorDetails) {
    debugPrint("Error From INSIDE FRAME_WORK");
    debugPrint("----------------------");
    debugPrint("Error :  ${errorDetails.exception}");
    debugPrint("StackTrace :  ${errorDetails.stack}");
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    debugPrint("UNCAUGHT ASYNCHRONOUS ERRORS INSIDE_FRAMEWORK");
    debugPrint("----------------------");
    debugPrint("Error :  $error");
    debugPrint("StackTrace :  $stack");
    return true;
  };

  await Hive.initFlutter();

  final container = ProviderContainer();
  container.read(userRepositoryProvider);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const App(),
    ),
  );
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
}
