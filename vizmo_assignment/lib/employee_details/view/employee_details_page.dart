import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vizmo/employee_details/cubit/employee_details_cubit.dart';
import 'package:vizmo/employee_details/widgets/image_header.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeDetailsCubit, EmployeeDetailsState>(
      builder: (context, state) {
        if (state is EmployeeDetailsSucessState) {
          return Stack(
            children: [
              ListView(
                children: [
                  const ImageHeader(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.employee.name,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            state.employee.email,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text(
                            'Birth Date : ${DateFormat('dd MMM yyyy').
                            format(state.employee.birthday)}',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            'Country : ${state.employee.country}',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            'Phone : ${state.employee.phone}',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            'Department : ${state.employee.department.
                            toString().
                            replaceAll('[', '').
                            replaceAll(']', '')}',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            'Date of creation : ${DateFormat('dd MMM yyyy').
                            format(state.employee.createdAt)}',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else if (state is EmployeeDetailsInitialState) {
          return const Text('Select a Employee to See Details');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
