import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouterRefreshNotifier extends ChangeNotifier {
  final UserRepositoryImpl _userRepo;

  RouterRefreshNotifier(Ref ref)
      : _userRepo = ref.read(userRepositoryProvider) {
    _userRepo.currentUserNotifier.addListener(_onUserChanged);
  }

  void _onUserChanged() {
    notifyListeners();
  }

  @override
  void dispose() {
    _userRepo.currentUserNotifier.removeListener(_onUserChanged);
    super.dispose();
  }
}

final routerRefreshNotifierProvider = Provider<RouterRefreshNotifier>((ref) {
  return RouterRefreshNotifier(ref);
});
