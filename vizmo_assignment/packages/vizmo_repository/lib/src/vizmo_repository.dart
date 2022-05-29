import 'package:vizmo_api/vizmo_api.dart';

/// {@template vizmo_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class VizmoRepository {
  /// {@macro vizmo_repository}
  VizmoRepository({VizmoApiClient? vizmoApiClient})
      : _vizmoApiClient = vizmoApiClient ?? VizmoApiClient();

  final VizmoApiClient _vizmoApiClient;

  /// Gets list of [Employee] `/employee?page=1&limit=10`.
  Future<List<Employee>> getEmployeeList({
    int page = 1,
    int limit = 10,
    SortBy sortBy = SortBy.id,
    bool isDesc = false,
  }) async {
    final employees = await _vizmoApiClient.getEmployeeList(
        page: page, limit: limit, sortBy: sortBy, isDesc: isDesc,);
    return employees;
  }

  /// Gets details of [Employee] by id `/employee/:id`.
  Future<Employee> getEmployee({required String id}) async {
    final employee = await _vizmoApiClient.getEmployee(id: id);

    return employee;
  }

  /// Gets list of [Checkin] of a [Employee] by id `/employee/:id/checkin`.
  Future<List<Checkin>> getEmployeeCheckinList({
    required int employeeId,
  }) async {
    final checkins =
        await _vizmoApiClient.getEmployeeCheckinList(employeeId: employeeId);
    return checkins;
  }

  /// Get a particular [Checkin] of a [Employee]  `/employee/:id/checkin/:id`.
  Future<Checkin> getEmployeeCheckin({
    required int employeeId,
    required int id,
  }) async {
    final checkin = await _vizmoApiClient.getEmployeeCheckin(
      employeeId: employeeId,
      id: id,
    );
    return checkin;
  }
}


// class ApiRepository {
//   final _provider = ApiProvider();

//   Future<CovidModel> fetchCovidList() {
//     return _provider.fetchCovidList();
//   }
// }
