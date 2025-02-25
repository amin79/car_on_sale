import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part "user.freezed.dart";
part "user.g.dart";

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const User._();
  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
      );
}
