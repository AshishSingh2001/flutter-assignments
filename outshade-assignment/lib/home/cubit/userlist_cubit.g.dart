// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userlist_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserListState _$$_UserListStateFromJson(Map<String, dynamic> json) =>
    _$_UserListState(
      status: _$enumDecodeNullable(_$UserListStatusEnumMap, json['status']) ??
          UserListStatus.initial,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserListStateToJson(_$_UserListState instance) =>
    <String, dynamic>{
      'status': _$UserListStatusEnumMap[instance.status],
      'users': instance.users,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$UserListStatusEnumMap = {
  UserListStatus.initial: 'initial',
  UserListStatus.loading: 'loading',
  UserListStatus.success: 'success',
  UserListStatus.failure: 'failure',
};
