import 'package:car_on_sale/domain/models/vehicle.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:car_on_sale/features/auth/screens/login_screen.dart';
import 'package:car_on_sale/features/home/screens/home_screen.dart';
import 'package:car_on_sale/features/home/screens/vehicle_detail_screen.dart';
import 'package:car_on_sale/routes/provider/router_refresh_notifier.dart';
import 'package:car_on_sale/routes/route_names.dart';
import 'package:context_holder/context_holder.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final currentUser = ref.watch(currentUserProvider);
  final routerRefreshProvider = ref.watch(routerRefreshNotifierProvider);
  return GoRouter(
    navigatorKey: ContextHolder.key,
    initialLocation: currentUser != null ? '/' : '/${RouteNames.login.name}',
    refreshListenable: routerRefreshProvider,
    routes: [
      GoRoute(
        path: '/',
        name: RouteNames.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
              path: "vehicleDetails",
              name: RouteNames.vehicleDetails.name,
              builder: (context, state) {
                final vehicle = state.extra! as Vehicle;
                return VehicleDetailScreen(vehicle: vehicle);
              }),
        ],
      ),
      GoRoute(
          path: "/login",
          name: RouteNames.login.name,
          builder: (context, state) => const LoginScreen())
    ],
  );
});
