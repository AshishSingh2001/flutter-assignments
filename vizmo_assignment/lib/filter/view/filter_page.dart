import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo/employee_list/employee_list.dart';
import 'package:vizmo/filter/bloc/filter_bloc.dart';
import 'package:vizmo_api/vizmo_api.dart';

// ignore: must_be_immutable
class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key}) : super(key: key);

  String getSortOrder({required bool isDesc}) {
    return isDesc ? 'desc' : 'asc';
  }

  bool getIsDesc({required String order}) {
    return order == 'desc';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Filter',
              style: TextStyle(color: mainColor),
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 12, right: 10),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.sort,
                          color: Color(0xff808080),
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<SortBy>(
                            value: state.sortBy,
                            onChanged: (newValue) {
                              context.read<FilterBloc>().add(
                                    FilterEvent(
                                      sortBy: newValue ?? SortBy.id,
                                      isDesc: state.isDesc,
                                    ),
                                  );
                            },
                            items: SortBy.values.map(
                              (SortBy value) {
                                return DropdownMenuItem<SortBy>(
                                  value: value,
                                  child: Text(
                                    value.name,
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.sort_by_alpha,
                          color: Color(0xff808080),
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            items: <String>[
                              'asc',
                              'desc',
                            ].map((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 16,
                                  ),
                                ),
                              );
                            }).toList(),
                            value: getSortOrder(isDesc: state.isDesc),
                            onChanged: (newValue) {
                              context.read<FilterBloc>().add(
                                    FilterEvent(
                                      sortBy: state.sortBy,
                                      isDesc:
                                          getIsDesc(order: newValue ?? 'desc'),
                                    ),
                                  );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
