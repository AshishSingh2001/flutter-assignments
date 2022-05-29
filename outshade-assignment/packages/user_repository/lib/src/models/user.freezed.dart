// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String name,
      required String id,
      required String atype,
      RegistrationState registrationState = RegistrationState.initial,
      int? age,
      Gender? gender = Gender.unspecified}) {
    return _User(
      name: name,
      id: id,
      atype: atype,
      registrationState: registrationState,
      age: age,
      gender: gender,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get atype => throw _privateConstructorUsedError;
  RegistrationState get registrationState => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String id,
      String atype,
      RegistrationState registrationState,
      int? age,
      Gender? gender});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? atype = freezed,
    Object? registrationState = freezed,
    Object? age = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      atype: atype == freezed
          ? _value.atype
          : atype // ignore: cast_nullable_to_non_nullable
              as String,
      registrationState: registrationState == freezed
          ? _value.registrationState
          : registrationState // ignore: cast_nullable_to_non_nullable
              as RegistrationState,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String id,
      String atype,
      RegistrationState registrationState,
      int? age,
      Gender? gender});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? atype = freezed,
    Object? registrationState = freezed,
    Object? age = freezed,
    Object? gender = freezed,
  }) {
    return _then(_User(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      atype: atype == freezed
          ? _value.atype
          : atype // ignore: cast_nullable_to_non_nullable
              as String,
      registrationState: registrationState == freezed
          ? _value.registrationState
          : registrationState // ignore: cast_nullable_to_non_nullable
              as RegistrationState,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {required this.name,
      required this.id,
      required this.atype,
      this.registrationState = RegistrationState.initial,
      this.age,
      this.gender = Gender.unspecified})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String atype;
  @JsonKey(defaultValue: RegistrationState.initial)
  @override
  final RegistrationState registrationState;
  @override
  final int? age;
  @JsonKey(defaultValue: Gender.unspecified)
  @override
  final Gender? gender;

  @override
  String toString() {
    return 'User(name: $name, id: $id, atype: $atype, registrationState: $registrationState, age: $age, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.atype, atype) || other.atype == atype) &&
            (identical(other.registrationState, registrationState) ||
                other.registrationState == registrationState) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, atype, registrationState, age, gender);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {required String name,
      required String id,
      required String atype,
      RegistrationState registrationState,
      int? age,
      Gender? gender}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get atype;
  @override
  RegistrationState get registrationState;
  @override
  int? get age;
  @override
  Gender? get gender;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
