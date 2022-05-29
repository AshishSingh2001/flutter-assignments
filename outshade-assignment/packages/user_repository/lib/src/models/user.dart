// ignore_for_file: public_member_api_docs, sort_unnamed_constructors_first,
/// avoid_unused_constructor_parameters

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed

/// User model
class User with _$User {
  const User._();

  const factory User({
    required String name,
    required String id,
    required String atype,
    @Default(RegistrationState.initial) RegistrationState registrationState,
    int? age,
    @Default(Gender.unspecified) Gender? gender,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
}

enum RegistrationState {
  initial,
  registered,
}

enum Gender {
  male,
  female,
  other,
  unspecified,
}

// {
// "name": "Anshu",
// "id": "6",
// "atype": "Permanent"
// },
