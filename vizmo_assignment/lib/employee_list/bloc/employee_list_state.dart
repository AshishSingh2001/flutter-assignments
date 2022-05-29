part of 'employee_list_bloc.dart';

abstract class EmployeeListState extends Equatable {
  const EmployeeListState({
    this.employeeList = const [],
  });
  final List<Employee> employeeList;

  @protected
  set employeeList(List<Employee> newValue) {
    employeeList = newValue;
  }

  @override
  List<Object?> get props => [];
}

class EmployeeListInitialState extends EmployeeListState {
  const EmployeeListInitialState();

  @override
  List<Object?> get props => [];
}

class EmployeeListLoadingState extends EmployeeListState {
  const EmployeeListLoadingState();
  @override
  List<Object?> get props => [];
}

class EmployeeListSuccessState extends EmployeeListState {
  const EmployeeListSuccessState({
    List<Employee> tempEmployeeList = const [],
    required this.sortBy,
    required this.isDesc,
    required this.page,
    required this.limit,
    this.hasReachedMax = false,
  }) : super(employeeList: tempEmployeeList);

  /// carry the list with employees
  final SortBy sortBy;
  final bool isDesc;
  final int page;
  final int limit;
  final bool hasReachedMax;
  @override
  List<Object?> get props => [employeeList, sortBy, isDesc, page];

  EmployeeListSuccessState copyWith({
    List<Employee>? employeeList,
    SortBy? sortBy,
    bool? isDesc,
    int? page,
    int? limit,
    bool? hasReachedMax,
  }) {
    super.employeeList = employeeList ?? super.employeeList;
    return EmployeeListSuccessState(
      sortBy: sortBy ?? this.sortBy,
      isDesc: isDesc ?? this.isDesc,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class EmployeeListErrorState extends EmployeeListState {
  const EmployeeListErrorState({
    required this.error,
  });
  final String error;

  @override
  List<Object?> get props => [error];
}

class NoMoreEmployeesState extends EmployeeListState {
  const NoMoreEmployeesState();

  @override
  List<Object?> get props => [];
}
