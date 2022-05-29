// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListState _$UserListStateFromJson(Map<String, dynamic> json) {
  return _UserListState.fromJson(json);
}

/// @nodoc
class _$UserListStateTearOff {
  const _$UserListStateTearOff();

  _UserListState call(
      {UserListStatus status = UserListStatus.initial, List<User>? users}) {
    return _UserListState(
      status: status,
      users: users,
    );
  }

  UserListState fromJson(Map<String, Object?> json) {
    return UserListState.fromJson(json);
  }
}

/// @nodoc
const $UserListState = _$UserListStateTearOff();

/// @nodoc
mixin _$UserListState {
  UserListStatus get status => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call({UserListStatus status, List<User>? users});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserListStatus,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
abstract class _$UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$UserListStateCopyWith(
          _UserListState value, $Res Function(_UserListState) then) =
      __$UserListStateCopyWithImpl<$Res>;
  @override
  $Res call({UserListStatus status, List<User>? users});
}

/// @nodoc
class __$UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$UserListStateCopyWith<$Res> {
  __$UserListStateCopyWithImpl(
      _UserListState _value, $Res Function(_UserListState) _then)
      : super(_value, (v) => _then(v as _UserListState));

  @override
  _UserListState get _value => super._value as _UserListState;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_UserListState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserListStatus,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListState implements _UserListState {
  const _$_UserListState({this.status = UserListStatus.initial, this.users});

  factory _$_UserListState.fromJson(Map<String, dynamic> json) =>
      _$$_UserListStateFromJson(json);

  @JsonKey(defaultValue: UserListStatus.initial)
  @override
  final UserListStatus status;
  @override
  final List<User>? users;

  @override
  String toString() {
    return 'UserListState(status: $status, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      __$UserListStateCopyWithImpl<_UserListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListStateToJson(this);
  }
}

abstract class _UserListState implements UserListState {
  const factory _UserListState({UserListStatus status, List<User>? users}) =
      _$_UserListState;

  factory _UserListState.fromJson(Map<String, dynamic> json) =
      _$_UserListState.fromJson;

  @override
  UserListStatus get status;
  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
