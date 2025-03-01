// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime? get valuatedAt => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get requestedAt => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "_fk_sellerUser")
  String? get fkSellerUser => throw _privateConstructorUsedError;
  @HiveField(6)
  double? get price => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get positiveCustomerFeedback => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "_fk_uuid_auction")
  String? get fkUuidAuction => throw _privateConstructorUsedError;
  @HiveField(9)
  DateTime? get inspectorRequestedAt => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get origin => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get estimationRequestId => throw _privateConstructorUsedError;
  @HiveField(12)
  String get make => throw _privateConstructorUsedError;
  @HiveField(13)
  String get model => throw _privateConstructorUsedError;
  @HiveField(14)
  String get externalId => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get feedback => throw _privateConstructorUsedError;
  @HiveField(16)
  bool? get isPositiveFeedback => throw _privateConstructorUsedError;

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) DateTime? valuatedAt,
      @HiveField(2) DateTime? requestedAt,
      @HiveField(3) DateTime? createdAt,
      @HiveField(4) DateTime? updatedAt,
      @HiveField(5) @JsonKey(name: "_fk_sellerUser") String? fkSellerUser,
      @HiveField(6) double? price,
      @HiveField(7) bool? positiveCustomerFeedback,
      @HiveField(8) @JsonKey(name: "_fk_uuid_auction") String? fkUuidAuction,
      @HiveField(9) DateTime? inspectorRequestedAt,
      @HiveField(10) String? origin,
      @HiveField(11) String? estimationRequestId,
      @HiveField(12) String make,
      @HiveField(13) String model,
      @HiveField(14) String externalId,
      @HiveField(15) String? feedback,
      @HiveField(16) bool? isPositiveFeedback});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? valuatedAt = freezed,
    Object? requestedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? fkSellerUser = freezed,
    Object? price = freezed,
    Object? positiveCustomerFeedback = freezed,
    Object? fkUuidAuction = freezed,
    Object? inspectorRequestedAt = freezed,
    Object? origin = freezed,
    Object? estimationRequestId = freezed,
    Object? make = null,
    Object? model = null,
    Object? externalId = null,
    Object? feedback = freezed,
    Object? isPositiveFeedback = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      valuatedAt: freezed == valuatedAt
          ? _value.valuatedAt
          : valuatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fkSellerUser: freezed == fkSellerUser
          ? _value.fkSellerUser
          : fkSellerUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      positiveCustomerFeedback: freezed == positiveCustomerFeedback
          ? _value.positiveCustomerFeedback
          : positiveCustomerFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      fkUuidAuction: freezed == fkUuidAuction
          ? _value.fkUuidAuction
          : fkUuidAuction // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectorRequestedAt: freezed == inspectorRequestedAt
          ? _value.inspectorRequestedAt
          : inspectorRequestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      estimationRequestId: freezed == estimationRequestId
          ? _value.estimationRequestId
          : estimationRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isPositiveFeedback: freezed == isPositiveFeedback
          ? _value.isPositiveFeedback
          : isPositiveFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleImplCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$VehicleImplCopyWith(
          _$VehicleImpl value, $Res Function(_$VehicleImpl) then) =
      __$$VehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) DateTime? valuatedAt,
      @HiveField(2) DateTime? requestedAt,
      @HiveField(3) DateTime? createdAt,
      @HiveField(4) DateTime? updatedAt,
      @HiveField(5) @JsonKey(name: "_fk_sellerUser") String? fkSellerUser,
      @HiveField(6) double? price,
      @HiveField(7) bool? positiveCustomerFeedback,
      @HiveField(8) @JsonKey(name: "_fk_uuid_auction") String? fkUuidAuction,
      @HiveField(9) DateTime? inspectorRequestedAt,
      @HiveField(10) String? origin,
      @HiveField(11) String? estimationRequestId,
      @HiveField(12) String make,
      @HiveField(13) String model,
      @HiveField(14) String externalId,
      @HiveField(15) String? feedback,
      @HiveField(16) bool? isPositiveFeedback});
}

/// @nodoc
class __$$VehicleImplCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$VehicleImpl>
    implements _$$VehicleImplCopyWith<$Res> {
  __$$VehicleImplCopyWithImpl(
      _$VehicleImpl _value, $Res Function(_$VehicleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? valuatedAt = freezed,
    Object? requestedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? fkSellerUser = freezed,
    Object? price = freezed,
    Object? positiveCustomerFeedback = freezed,
    Object? fkUuidAuction = freezed,
    Object? inspectorRequestedAt = freezed,
    Object? origin = freezed,
    Object? estimationRequestId = freezed,
    Object? make = null,
    Object? model = null,
    Object? externalId = null,
    Object? feedback = freezed,
    Object? isPositiveFeedback = freezed,
  }) {
    return _then(_$VehicleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      valuatedAt: freezed == valuatedAt
          ? _value.valuatedAt
          : valuatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fkSellerUser: freezed == fkSellerUser
          ? _value.fkSellerUser
          : fkSellerUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      positiveCustomerFeedback: freezed == positiveCustomerFeedback
          ? _value.positiveCustomerFeedback
          : positiveCustomerFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      fkUuidAuction: freezed == fkUuidAuction
          ? _value.fkUuidAuction
          : fkUuidAuction // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectorRequestedAt: freezed == inspectorRequestedAt
          ? _value.inspectorRequestedAt
          : inspectorRequestedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      estimationRequestId: freezed == estimationRequestId
          ? _value.estimationRequestId
          : estimationRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isPositiveFeedback: freezed == isPositiveFeedback
          ? _value.isPositiveFeedback
          : isPositiveFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleImpl implements _Vehicle {
  const _$VehicleImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.valuatedAt,
      @HiveField(2) this.requestedAt,
      @HiveField(3) this.createdAt,
      @HiveField(4) this.updatedAt,
      @HiveField(5) @JsonKey(name: "_fk_sellerUser") this.fkSellerUser,
      @HiveField(6) this.price,
      @HiveField(7) this.positiveCustomerFeedback,
      @HiveField(8) @JsonKey(name: "_fk_uuid_auction") this.fkUuidAuction,
      @HiveField(9) this.inspectorRequestedAt,
      @HiveField(10) this.origin,
      @HiveField(11) this.estimationRequestId,
      @HiveField(12) required this.make,
      @HiveField(13) required this.model,
      @HiveField(14) required this.externalId,
      @HiveField(15) this.feedback,
      @HiveField(16) this.isPositiveFeedback});

  factory _$VehicleImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final DateTime? valuatedAt;
  @override
  @HiveField(2)
  final DateTime? requestedAt;
  @override
  @HiveField(3)
  final DateTime? createdAt;
  @override
  @HiveField(4)
  final DateTime? updatedAt;
  @override
  @HiveField(5)
  @JsonKey(name: "_fk_sellerUser")
  final String? fkSellerUser;
  @override
  @HiveField(6)
  final double? price;
  @override
  @HiveField(7)
  final bool? positiveCustomerFeedback;
  @override
  @HiveField(8)
  @JsonKey(name: "_fk_uuid_auction")
  final String? fkUuidAuction;
  @override
  @HiveField(9)
  final DateTime? inspectorRequestedAt;
  @override
  @HiveField(10)
  final String? origin;
  @override
  @HiveField(11)
  final String? estimationRequestId;
  @override
  @HiveField(12)
  final String make;
  @override
  @HiveField(13)
  final String model;
  @override
  @HiveField(14)
  final String externalId;
  @override
  @HiveField(15)
  final String? feedback;
  @override
  @HiveField(16)
  final bool? isPositiveFeedback;

  @override
  String toString() {
    return 'Vehicle(id: $id, valuatedAt: $valuatedAt, requestedAt: $requestedAt, createdAt: $createdAt, updatedAt: $updatedAt, fkSellerUser: $fkSellerUser, price: $price, positiveCustomerFeedback: $positiveCustomerFeedback, fkUuidAuction: $fkUuidAuction, inspectorRequestedAt: $inspectorRequestedAt, origin: $origin, estimationRequestId: $estimationRequestId, make: $make, model: $model, externalId: $externalId, feedback: $feedback, isPositiveFeedback: $isPositiveFeedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.valuatedAt, valuatedAt) ||
                other.valuatedAt == valuatedAt) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.fkSellerUser, fkSellerUser) ||
                other.fkSellerUser == fkSellerUser) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(
                    other.positiveCustomerFeedback, positiveCustomerFeedback) ||
                other.positiveCustomerFeedback == positiveCustomerFeedback) &&
            (identical(other.fkUuidAuction, fkUuidAuction) ||
                other.fkUuidAuction == fkUuidAuction) &&
            (identical(other.inspectorRequestedAt, inspectorRequestedAt) ||
                other.inspectorRequestedAt == inspectorRequestedAt) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.estimationRequestId, estimationRequestId) ||
                other.estimationRequestId == estimationRequestId) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.isPositiveFeedback, isPositiveFeedback) ||
                other.isPositiveFeedback == isPositiveFeedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      valuatedAt,
      requestedAt,
      createdAt,
      updatedAt,
      fkSellerUser,
      price,
      positiveCustomerFeedback,
      fkUuidAuction,
      inspectorRequestedAt,
      origin,
      estimationRequestId,
      make,
      model,
      externalId,
      feedback,
      isPositiveFeedback);

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      __$$VehicleImplCopyWithImpl<_$VehicleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleImplToJson(
      this,
    );
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle(
      {@HiveField(0) final int? id,
      @HiveField(1) final DateTime? valuatedAt,
      @HiveField(2) final DateTime? requestedAt,
      @HiveField(3) final DateTime? createdAt,
      @HiveField(4) final DateTime? updatedAt,
      @HiveField(5) @JsonKey(name: "_fk_sellerUser") final String? fkSellerUser,
      @HiveField(6) final double? price,
      @HiveField(7) final bool? positiveCustomerFeedback,
      @HiveField(8)
      @JsonKey(name: "_fk_uuid_auction")
      final String? fkUuidAuction,
      @HiveField(9) final DateTime? inspectorRequestedAt,
      @HiveField(10) final String? origin,
      @HiveField(11) final String? estimationRequestId,
      @HiveField(12) required final String make,
      @HiveField(13) required final String model,
      @HiveField(14) required final String externalId,
      @HiveField(15) final String? feedback,
      @HiveField(16) final bool? isPositiveFeedback}) = _$VehicleImpl;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$VehicleImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  DateTime? get valuatedAt;
  @override
  @HiveField(2)
  DateTime? get requestedAt;
  @override
  @HiveField(3)
  DateTime? get createdAt;
  @override
  @HiveField(4)
  DateTime? get updatedAt;
  @override
  @HiveField(5)
  @JsonKey(name: "_fk_sellerUser")
  String? get fkSellerUser;
  @override
  @HiveField(6)
  double? get price;
  @override
  @HiveField(7)
  bool? get positiveCustomerFeedback;
  @override
  @HiveField(8)
  @JsonKey(name: "_fk_uuid_auction")
  String? get fkUuidAuction;
  @override
  @HiveField(9)
  DateTime? get inspectorRequestedAt;
  @override
  @HiveField(10)
  String? get origin;
  @override
  @HiveField(11)
  String? get estimationRequestId;
  @override
  @HiveField(12)
  String get make;
  @override
  @HiveField(13)
  String get model;
  @override
  @HiveField(14)
  String get externalId;
  @override
  @HiveField(15)
  String? get feedback;
  @override
  @HiveField(16)
  bool? get isPositiveFeedback;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
