part of 'filter_bloc.dart';

@freezed
class FilterEvent {
  const FilterEvent({
    this.sortBy = SortBy.none,
    this.isDesc = false,
  });
  final SortBy sortBy;
  final bool isDesc;
}
