import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/models/user.dart';

abstract class UserRepository {
  Future<void> saveUser(User user);
  User? getUserByEmail(String email);
  FutureEither signIn(User user);
  FutureVoid signOut();

  User? get currentUser;
}
