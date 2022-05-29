import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo/employee_details/cubit/employee_details_cubit.dart';
import 'package:vizmo_api/vizmo_api.dart';

class EmployeeListItem extends StatelessWidget {
  const EmployeeListItem({Key? key, required this.employee}) : super(key: key);

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text(employee.id, style: textTheme.caption),
        title: Text(employee.name),
        isThreeLine: true,
        subtitle: Text(employee.email),
        dense: true,
        onTap: () {
          context.read<EmployeeDetailsCubit>().getUser(id: employee.id);
        },
      ),
    );
  }
}
