import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/failure/failure.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository.dart';
import 'package:fpdart/fpdart.dart';

import 'package:hive/hive.dart';

part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl() {
    _init();
  }

  late Box<User> _userBox;

  final ValueNotifier<User?> currentUserNotifier = ValueNotifier(null);

  Future<void> _init() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(UserAdapter());
    }
    _userBox = await Hive.openBox<User>('userBox');

    // Load the persisted current user if available
    if (_userBox.containsKey('currentUser')) {
      currentUserNotifier.value = _userBox.get('currentUser');
    }
  }

  @override
  User? get currentUser => currentUserNotifier.value;

  @override
  FutureVoid signIn(User user) async {
    try {
      final userByEmail = getUserByEmail(user.email);
      if (userByEmail != null) {
        currentUserNotifier.value = userByEmail;
      } else {
        final addedUser = await saveUser(user);
        currentUserNotifier.value = addedUser;
      }
      // Persist the logged in user
      await _userBox.put('currentUser', currentUserNotifier.value!);

      return right(null);
    } catch (e) {
      return left(SignInFailure());
    }
  }

  @override
  User? getUserByEmail(String email) {
    try {
      final result =
          _userBox.values.where((user) => user.email == email).toList();
      return result.isNotEmpty ? result.first : null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User?> saveUser(User user) async {
    try {
      await _userBox.put(user.id, user);
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  FutureVoid signOut() async {
    currentUserNotifier.value = null;
    await _userBox.delete('currentUser');
    return right(null);
  }
}

@riverpod
UserRepositoryImpl userRepository(Ref ref) {
  return UserRepositoryImpl();
}

final currentUserNotifierProvider =
    ChangeNotifierProvider<ValueNotifier<User?>>((ref) {
  return ref.watch(userRepositoryProvider).currentUserNotifier;
});

final currentUserProvider = Provider<User?>((ref) {
  return ref.watch(currentUserNotifierProvider).value;
});
