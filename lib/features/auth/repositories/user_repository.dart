import 'package:car_on_sale/domain/models/user.dart';

abstract class UserRepository {
  Future<void> saveUser(User user);
  User? getUserByEmail(String email);
  Future<void> signIn(User user);
  signOut(String id);

  User? get currentUser;
}
