import 'package:car_on_sale/core/either_type_defs.dart';
import 'package:car_on_sale/domain/failure/failure.dart';
import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required Box<User> userBox}) : _userBox = userBox;
  final Box<User> _userBox;

  User? _currentUser;

  @override
  User? get currentUser => _currentUser;

  @override
  FutureVoid signIn(User user) async {
    try {
      final userByEmail = getUserByEmail(user.email);
      if (userByEmail != null) {
        _currentUser = userByEmail;
      } else {
        final addedUser = await saveUser(user);
        _currentUser = addedUser;
      }
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
      _currentUser = result.isNotEmpty ? result.first : null;
      return _currentUser;
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
  signOut(String id) {
    _currentUser = null;
  }
}
