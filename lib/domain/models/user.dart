import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part "user.freezed.dart";
part "user.g.dart";

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const User._();

  static const Uuid _uuid = Uuid();

  const factory User({
    @HiveField(0) String? id,
    @HiveField(1) required String name,
    @HiveField(2) required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
      );

  User withGeneratedId() {
    return copyWith(id: _uuid.v4());
  }
}
