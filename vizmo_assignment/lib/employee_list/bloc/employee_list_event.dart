part of 'employee_list_bloc.dart';

@immutable
abstract class EmployeeListEvent {
  const EmployeeListEvent();
}

class EmployeeListFetchEvent extends EmployeeListEvent {
  const EmployeeListFetchEvent({
    this.employeeList = const [],
    this.sortBy = SortBy.none,
    this.isDesc = false,
    this.page = 1,
    this.limit = 20,
  });
  final List<Employee> employeeList;
  final SortBy sortBy;
  final bool isDesc;
  final int page;
  final int limit;
}

class EmployeeListScrollEvent extends EmployeeListEvent {
  const EmployeeListScrollEvent();

}
