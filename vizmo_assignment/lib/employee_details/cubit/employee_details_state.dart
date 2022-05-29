part of 'employee_details_cubit.dart';

abstract class EmployeeDetailsState {
  const EmployeeDetailsState();
}

class EmployeeDetailsInitialState extends EmployeeDetailsState {
  const EmployeeDetailsInitialState();
}

class EmployeeDetailsLoadingState extends EmployeeDetailsState {
  const EmployeeDetailsLoadingState();
}

class EmployeeDetailsSucessState extends EmployeeDetailsState {
  const EmployeeDetailsSucessState({
    required this.employee,
  });
  final Employee employee;
}
