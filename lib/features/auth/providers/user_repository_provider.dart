import 'package:car_on_sale/domain/models/user.dart';
import 'package:car_on_sale/features/auth/repositories/user_repository_impl.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_repository_provider.g.dart';

@riverpod
Future<UserRepositoryImpl> userRepository(Ref ref) async {
  final userBox = await Hive.openBox<User>('userBox');
  return UserRepositoryImpl(userBox: userBox);
}
