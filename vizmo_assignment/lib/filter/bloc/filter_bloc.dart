import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizmo_api/vizmo_api.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState()) {
    on<FilterEvent>((event, emit) {
      emit(
        FilterState(
          sortBy: event.sortBy,
          isDesc: event.isDesc,
        ),
      );
    });
  }
}
