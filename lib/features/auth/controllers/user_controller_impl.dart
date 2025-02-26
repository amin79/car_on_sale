import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/controllers/user_controller.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_controller_impl.g.dart';

class UserControllerImpl implements UserController {
  final UserRepository _userRepository;

  UserControllerImpl(this._userRepository);

  @override
  Future<void> signIn(User user) async {
    EasyLoading.show();

    final result = await _userRepository.signIn(user);

    result.fold(
      (failure) {
        EasyLoading.showError('Sign in failed');
      },
      (success) {},
    );
  }

  @override
  Future<void> signOut() async {
    EasyLoading.show();

    final result = await _userRepository.signOut();

    result.fold(
      (failure) {
        EasyLoading.showError('Something went wrong');
      },
      (success) {},
    );
  }
}

@riverpod
UserController userController(Ref ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return UserControllerImpl(userRepository);
}
