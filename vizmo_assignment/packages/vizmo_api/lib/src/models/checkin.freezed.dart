// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Checkin _$CheckinFromJson(Map<String, dynamic> json) {
  return _Checkin.fromJson(json);
}

/// @nodoc
class _$CheckinTearOff {
  const _$CheckinTearOff();

  _Checkin call(
      {required DateTime checkin,
      required String location,
      required List<String> purpose,
      required int id,
      required int employeeId}) {
    return _Checkin(
      checkin: checkin,
      location: location,
      purpose: purpose,
      id: id,
      employeeId: employeeId,
    );
  }

  Checkin fromJson(Map<String, Object?> json) {
    return Checkin.fromJson(json);
  }
}

/// @nodoc
const $Checkin = _$CheckinTearOff();

/// @nodoc
mixin _$Checkin {
  DateTime get checkin => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get purpose => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckinCopyWith<Checkin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinCopyWith<$Res> {
  factory $CheckinCopyWith(Checkin value, $Res Function(Checkin) then) =
      _$CheckinCopyWithImpl<$Res>;
  $Res call(
      {DateTime checkin,
      String location,
      List<String> purpose,
      int id,
      int employeeId});
}

/// @nodoc
class _$CheckinCopyWithImpl<$Res> implements $CheckinCopyWith<$Res> {
  _$CheckinCopyWithImpl(this._value, this._then);

  final Checkin _value;
  // ignore: unused_field
  final $Res Function(Checkin) _then;

  @override
  $Res call({
    Object? checkin = freezed,
    Object? location = freezed,
    Object? purpose = freezed,
    Object? id = freezed,
    Object? employeeId = freezed,
  }) {
    return _then(_value.copyWith(
      checkin: checkin == freezed
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CheckinCopyWith<$Res> implements $CheckinCopyWith<$Res> {
  factory _$CheckinCopyWith(_Checkin value, $Res Function(_Checkin) then) =
      __$CheckinCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime checkin,
      String location,
      List<String> purpose,
      int id,
      int employeeId});
}

/// @nodoc
class __$CheckinCopyWithImpl<$Res> extends _$CheckinCopyWithImpl<$Res>
    implements _$CheckinCopyWith<$Res> {
  __$CheckinCopyWithImpl(_Checkin _value, $Res Function(_Checkin) _then)
      : super(_value, (v) => _then(v as _Checkin));

  @override
  _Checkin get _value => super._value as _Checkin;

  @override
  $Res call({
    Object? checkin = freezed,
    Object? location = freezed,
    Object? purpose = freezed,
    Object? id = freezed,
    Object? employeeId = freezed,
  }) {
    return _then(_Checkin(
      checkin: checkin == freezed
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Checkin implements _Checkin {
  const _$_Checkin(
      {required this.checkin,
      required this.location,
      required this.purpose,
      required this.id,
      required this.employeeId});

  factory _$_Checkin.fromJson(Map<String, dynamic> json) =>
      _$$_CheckinFromJson(json);

  @override
  final DateTime checkin;
  @override
  final String location;
  @override
  final List<String> purpose;
  @override
  final int id;
  @override
  final int employeeId;

  @override
  String toString() {
    return 'Checkin(checkin: $checkin, location: $location, purpose: $purpose, id: $id, employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Checkin &&
            const DeepCollectionEquality().equals(other.checkin, checkin) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(checkin),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(purpose),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(employeeId));

  @JsonKey(ignore: true)
  @override
  _$CheckinCopyWith<_Checkin> get copyWith =>
      __$CheckinCopyWithImpl<_Checkin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckinToJson(this);
  }
}

abstract class _Checkin implements Checkin {
  const factory _Checkin(
      {required DateTime checkin,
      required String location,
      required List<String> purpose,
      required int id,
      required int employeeId}) = _$_Checkin;

  factory _Checkin.fromJson(Map<String, dynamic> json) = _$_Checkin.fromJson;

  @override
  DateTime get checkin;
  @override
  String get location;
  @override
  List<String> get purpose;
  @override
  int get id;
  @override
  int get employeeId;
  @override
  @JsonKey(ignore: true)
  _$CheckinCopyWith<_Checkin> get copyWith =>
      throw _privateConstructorUsedError;
}
