// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkin _$$_CheckinFromJson(Map<String, dynamic> json) => _$_Checkin(
      checkin: DateTime.parse(json['checkin'] as String),
      location: json['location'] as String,
      purpose:
          (json['purpose'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as int,
      employeeId: json['employeeId'] as int,
    );

Map<String, dynamic> _$$_CheckinToJson(_$_Checkin instance) =>
    <String, dynamic>{
      'checkin': instance.checkin.toIso8601String(),
      'location': instance.location,
      'purpose': instance.purpose,
      'id': instance.id,
      'employeeId': instance.employeeId,
    };
