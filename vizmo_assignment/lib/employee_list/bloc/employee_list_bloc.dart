import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:vizmo_api/vizmo_api.dart';
import 'package:vizmo_repository/vizmo_repository.dart';

part 'employee_list_event.dart';
part 'employee_list_state.dart';

const throttleDuration = Duration(milliseconds: 500);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class EmployeeListBloc extends Bloc<EmployeeListEvent, EmployeeListState> {
  EmployeeListBloc(this._vizmoRepository)
      : super(const EmployeeListInitialState()) {
    on<EmployeeListScrollEvent>(
      (event, emit) async {
        final List<Employee> nextPage;
        if (state is EmployeeListSuccessState) {
          // if previous state is success and hasreachedmax return
          final curr = state as EmployeeListSuccessState;
          if (curr.hasReachedMax) return;
          try {
            nextPage = await _vizmoRepository.getEmployeeList(
              page: curr.page + 1,
              limit: curr.limit,
              sortBy: curr.sortBy,
              isDesc: curr.isDesc,
            );
            emit(
              EmployeeListSuccessState(
                tempEmployeeList: [...state.employeeList, ...nextPage],
                sortBy: curr.sortBy,
                isDesc: curr.isDesc,
                page: curr.page + 1,
                limit: curr.limit,
              ),
            );
          } on NoMoreEmployeeFailure catch (_) {
            final curr = state as EmployeeListSuccessState;
            emit(curr.copyWith(hasReachedMax: true));
          }
        }
      },
      transformer: throttleDroppable(throttleDuration),
    );
    on<EmployeeListFetchEvent>((event, emit) async {
      // emit(const EmployeeListLoadingState());
      final List<Employee> nextPage;
      try {
        nextPage = await _vizmoRepository.getEmployeeList(
          page: event.page,
          limit: event.limit,
          sortBy: event.sortBy,
          isDesc: event.isDesc,
        );
        emit(
          EmployeeListSuccessState(
            tempEmployeeList: nextPage,
            sortBy: event.sortBy,
            isDesc: event.isDesc,
            page: event.page,
            limit: event.limit,
          ),
        );
      } on NoMoreEmployeeFailure catch (_) {
        final curr = state as EmployeeListSuccessState;
        emit(curr.copyWith(hasReachedMax: true));
      }
    });
  }

  final VizmoRepository _vizmoRepository;
}
