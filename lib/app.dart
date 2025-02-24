import 'package:car_on_sale/routes/provider/route.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

class App extends StatefulHookConsumerWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    final goRouter = ref.watch(goRouterProvider);

    return OverlaySupport.global(
      child: MaterialApp.router(
        title: 'CarOnSale',
        routerConfig: goRouter,
        builder: EasyLoading.init(),
      ),
    );
  }
}
