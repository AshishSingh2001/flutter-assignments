// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vizmo_api/src/exception.dart';
import 'package:vizmo_api/src/models/checkin.dart';
import 'package:vizmo_api/src/models/employee.dart';

/// parameter to sort by for employee list
enum SortBy { createdAt, name, department, country, id, none }

/// {@template vizmo_api}
/// Api Client for Employee and checkin Details
/// {@endtemplate}
class VizmoApiClient {
  /// {@macro vizmo_api}
  VizmoApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = '620dfdda20ac3a4eedcf5a52.mockapi.io';
  final http.Client _httpClient;

  /// Gets list of [Employee] `/employee?page=1&limit=10`.
  Future<List<Employee>> getEmployeeList({
    required int page,
    required int limit,
    required SortBy sortBy,
    required bool isDesc,
  }) async {
    final queries = <String, String>{
      'page': page.toString(),
      'limit': limit.toString(),
      'sortBy': sortBy == SortBy.none ? '' : sortBy.name,
      'order': isDesc ? 'desc' : 'asc',
    };
    final employeeRequest = Uri.https(_baseUrl, '/api/employee', queries);

    final employeeListResponse = await _httpClient.get(employeeRequest);

    if (employeeListResponse.statusCode != 200) {
      throw EmployeeListRequestFailure();
    }

    final employeeJson = jsonDecode(
      employeeListResponse.body,
    ) as List<dynamic>;

    if (employeeJson.isEmpty) {
      throw NoMoreEmployeeFailure();
    }
    // ignore: unnecessary_lambdas
    final employees = employeeJson
        .map((dynamic e) => Employee.fromJson(e as Map<String, dynamic>))
        .toList();
    return employees;
  }

  /// Gets details of [Employee] by id `/employee/:id`.
  Future<Employee> getEmployee({required String id}) async {
    final employeeRequest = Uri.https(_baseUrl, '/api/employee/$id');

    final employeeResponse = await _httpClient.get(employeeRequest);

    if (employeeResponse.statusCode != 200) {
      throw EmployeeNotFoundFailure();
    }

    final employeeJson = jsonDecode(
      employeeResponse.body,
    ) as Map<String, dynamic>;

    if (employeeJson.isEmpty) {
      throw EmployeeNotFoundFailure();
    }
    // ignore: unnecessary_lambdas
    final employee = Employee.fromJson(employeeJson);
    return employee;
  }

  /// Gets list of [Checkin] of a [Employee] by id `/employee/:id/checkin`.
  Future<List<Checkin>> getEmployeeCheckinList({
    required int employeeId,
  }) async {
    final checkinRequest =
        Uri.https(_baseUrl, '/api/employee/$employeeId/checkin');

    final checkinResponse = await _httpClient.get(checkinRequest);

    if (checkinResponse.statusCode != 200) {
      throw CheckinNotFoundFailure();
    }

    final checkinJson = jsonDecode(
      checkinResponse.body,
    ) as List<Map<String, dynamic>>;

    if (checkinJson.isEmpty) {
      throw CheckinNotFoundFailure();
    }

    final checkinList = checkinJson.map(Checkin.fromJson).toList();
    return checkinList;
  }

  /// Get a particular [Checkin] of a [Employee]  `/employee/:id/checkin/:id`.
  Future<Checkin> getEmployeeCheckin({
    required int employeeId,
    required int id,
  }) async {
    final checkinRequest =
        Uri.https(_baseUrl, '/api/employee/$employeeId/checkin/$id');

    final checkinResponse = await _httpClient.get(checkinRequest);

    if (checkinResponse.statusCode != 200) {
      throw CheckinNotFoundFailure();
    }

    final checkinJson = jsonDecode(
      checkinResponse.body,
    ) as Map<String, dynamic>;

    if (checkinJson.isEmpty) {
      throw CheckinNotFoundFailure();
    }

    final checkin = Checkin.fromJson(checkinJson);
    return checkin;
  }
}
