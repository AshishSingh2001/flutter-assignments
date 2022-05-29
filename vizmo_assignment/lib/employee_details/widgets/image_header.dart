import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo/employee_details/cubit/employee_details_cubit.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeDetailsCubit, EmployeeDetailsState>(
      builder: (context, state) {
        if (state is EmployeeDetailsSucessState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            color: Colors.white10,
            child: CachedNetworkImage(
              imageUrl: state.employee.avatar,
              placeholder: (ctx, text) =>
                  const Center(child: CircularProgressIndicator()),
            ),
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
