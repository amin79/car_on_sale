// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vin_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VinDataAdapter extends TypeAdapter<VinData> {
  @override
  final int typeId = 1;

  @override
  VinData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VinData(
      id: fields[0] as int?,
      valuatedAt: fields[1] as DateTime?,
      requestedAt: fields[2] as DateTime?,
      createdAt: fields[3] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      fkSellerUser: fields[5] as String?,
      price: fields[6] as double?,
      positiveCustomerFeedback: fields[7] as bool?,
      fkUuidAuction: fields[8] as String?,
      inspectorRequestedAt: fields[9] as DateTime?,
      origin: fields[10] as String?,
      estimationRequestId: fields[11] as String?,
      make: fields[12] as String,
      model: fields[13] as String,
      externalId: fields[14] as String,
      feedback: fields[15] as String?,
      isPositiveFeedback: fields[16] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, VinData obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.valuatedAt)
      ..writeByte(2)
      ..write(obj.requestedAt)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.fkSellerUser)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.positiveCustomerFeedback)
      ..writeByte(8)
      ..write(obj.fkUuidAuction)
      ..writeByte(9)
      ..write(obj.inspectorRequestedAt)
      ..writeByte(10)
      ..write(obj.origin)
      ..writeByte(11)
      ..write(obj.estimationRequestId)
      ..writeByte(12)
      ..write(obj.make)
      ..writeByte(13)
      ..write(obj.model)
      ..writeByte(14)
      ..write(obj.externalId)
      ..writeByte(15)
      ..write(obj.feedback)
      ..writeByte(16)
      ..write(obj.isPositiveFeedback);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VinDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VinDataImpl _$$VinDataImplFromJson(Map<String, dynamic> json) =>
    _$VinDataImpl(
      id: (json['id'] as num?)?.toInt(),
      valuatedAt: json['valuatedAt'] == null
          ? null
          : DateTime.parse(json['valuatedAt'] as String),
      requestedAt: json['requestedAt'] == null
          ? null
          : DateTime.parse(json['requestedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      fkSellerUser: json['_fk_sellerUser'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      positiveCustomerFeedback: json['positiveCustomerFeedback'] as bool?,
      fkUuidAuction: json['_fk_uuid_auction'] as String?,
      inspectorRequestedAt: json['inspectorRequestedAt'] == null
          ? null
          : DateTime.parse(json['inspectorRequestedAt'] as String),
      origin: json['origin'] as String?,
      estimationRequestId: json['estimationRequestId'] as String?,
      make: json['make'] as String,
      model: json['model'] as String,
      externalId: json['externalId'] as String,
      feedback: json['feedback'] as String?,
      isPositiveFeedback: json['isPositiveFeedback'] as bool?,
    );

Map<String, dynamic> _$$VinDataImplToJson(_$VinDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valuatedAt': instance.valuatedAt?.toIso8601String(),
      'requestedAt': instance.requestedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '_fk_sellerUser': instance.fkSellerUser,
      'price': instance.price,
      'positiveCustomerFeedback': instance.positiveCustomerFeedback,
      '_fk_uuid_auction': instance.fkUuidAuction,
      'inspectorRequestedAt': instance.inspectorRequestedAt?.toIso8601String(),
      'origin': instance.origin,
      'estimationRequestId': instance.estimationRequestId,
      'make': instance.make,
      'model': instance.model,
      'externalId': instance.externalId,
      'feedback': instance.feedback,
      'isPositiveFeedback': instance.isPositiveFeedback,
    };
