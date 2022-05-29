import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
/// data class for Employee
class Employee with _$Employee {
  // ignore: public_member_api_docs
  const factory Employee({
    required DateTime createdAt,
    required String name,
    required String avatar,
    required String email,
    required String phone,
    required List<String> department,
    required String country,
    required DateTime birthday,
    required String id,
  }) = _Employee;

  /// convert json to Employee
  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
