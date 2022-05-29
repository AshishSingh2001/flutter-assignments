part of 'filter_bloc.dart';

@freezed
class FilterState {
  const FilterState({
    this.sortBy = SortBy.none,
    this.isDesc = false,
  });
  final SortBy sortBy;
  final bool isDesc;
}
