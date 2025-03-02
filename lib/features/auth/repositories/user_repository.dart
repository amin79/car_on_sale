import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/user.dart';
import 'package:flutter/foundation.dart';

abstract class UserRepository {
  FutureEither<User?> saveUser(User user);
  User? getUserByEmail(String email);
  FutureEither signIn(User user);
  FutureVoid signOut();
  ValueNotifier<User?> get currentUserNotifier;
  User? get currentUser;
}
