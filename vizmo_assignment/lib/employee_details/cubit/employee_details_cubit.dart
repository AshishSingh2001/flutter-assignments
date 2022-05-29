import 'package:bloc/bloc.dart';
import 'package:vizmo_api/vizmo_api.dart';
import 'package:vizmo_repository/vizmo_repository.dart';

part 'employee_details_state.dart';

class EmployeeDetailsCubit extends Cubit<EmployeeDetailsState> {
  EmployeeDetailsCubit(this._vizmoRepository)
      : super(const EmployeeDetailsInitialState());

  final VizmoRepository _vizmoRepository;

  Future<void> getUser({required String id}) async {
    emit(const EmployeeDetailsLoadingState());
    final employee = await _vizmoRepository.getEmployee(id: id);
    emit(EmployeeDetailsSucessState(employee: employee));
  }
}
