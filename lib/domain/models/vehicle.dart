import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
@HiveType(typeId: 1)
class Vehicle with _$Vehicle {
  const factory Vehicle({
    @HiveField(0) int? id,
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
    @HiveField(12) required String make,
    @HiveField(13) required String model,
    @HiveField(14) required String externalId,
    @HiveField(15) String? feedback,
    @HiveField(16) bool? isPositiveFeedback,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
