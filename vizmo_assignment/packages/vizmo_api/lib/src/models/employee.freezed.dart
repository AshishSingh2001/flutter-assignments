// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
class _$EmployeeTearOff {
  const _$EmployeeTearOff();

  _Employee call(
      {required DateTime createdAt,
      required String name,
      required String avatar,
      required String email,
      required String phone,
      required List<String> department,
      required String country,
      required DateTime birthday,
      required String id}) {
    return _Employee(
      createdAt: createdAt,
      name: name,
      avatar: avatar,
      email: email,
      phone: phone,
      department: department,
      country: country,
      birthday: birthday,
      id: id,
    );
  }

  Employee fromJson(Map<String, Object?> json) {
    return Employee.fromJson(json);
  }
}

/// @nodoc
const $Employee = _$EmployeeTearOff();

/// @nodoc
mixin _$Employee {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  List<String> get department => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res>;
  $Res call(
      {DateTime createdAt,
      String name,
      String avatar,
      String email,
      String phone,
      List<String> department,
      String country,
      DateTime birthday,
      String id});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res> implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  final Employee _value;
  // ignore: unused_field
  final $Res Function(Employee) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? department = freezed,
    Object? country = freezed,
    Object? birthday = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) then) =
      __$EmployeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime createdAt,
      String name,
      String avatar,
      String email,
      String phone,
      List<String> department,
      String country,
      DateTime birthday,
      String id});
}

/// @nodoc
class __$EmployeeCopyWithImpl<$Res> extends _$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(_Employee _value, $Res Function(_Employee) _then)
      : super(_value, (v) => _then(v as _Employee));

  @override
  _Employee get _value => super._value as _Employee;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? department = freezed,
    Object? country = freezed,
    Object? birthday = freezed,
    Object? id = freezed,
  }) {
    return _then(_Employee(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employee implements _Employee {
  const _$_Employee(
      {required this.createdAt,
      required this.name,
      required this.avatar,
      required this.email,
      required this.phone,
      required this.department,
      required this.country,
      required this.birthday,
      required this.id});

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String email;
  @override
  final String phone;
  @override
  final List<String> department;
  @override
  final String country;
  @override
  final DateTime birthday;
  @override
  final String id;

  @override
  String toString() {
    return 'Employee(createdAt: $createdAt, name: $name, avatar: $avatar, email: $email, phone: $phone, department: $department, country: $country, birthday: $birthday, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Employee &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$EmployeeCopyWith<_Employee> get copyWith =>
      __$EmployeeCopyWithImpl<_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(this);
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {required DateTime createdAt,
      required String name,
      required String avatar,
      required String email,
      required String phone,
      required List<String> department,
      required String country,
      required DateTime birthday,
      required String id}) = _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get name;
  @override
  String get avatar;
  @override
  String get email;
  @override
  String get phone;
  @override
  List<String> get department;
  @override
  String get country;
  @override
  DateTime get birthday;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$EmployeeCopyWith<_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
