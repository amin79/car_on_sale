import 'package:car_on_sale/domain/models/user.dart';

abstract class UserController {
  Future<void> signIn(User user);
  Future<void> signOut();
}
