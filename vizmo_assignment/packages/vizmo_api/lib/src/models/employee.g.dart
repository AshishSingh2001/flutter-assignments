// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      department: (json['department'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      country: json['country'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'avatar': instance.avatar,
      'email': instance.email,
      'phone': instance.phone,
      'department': instance.department,
      'country': instance.country,
      'birthday': instance.birthday.toIso8601String(),
      'id': instance.id,
    };
