import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outshade_assignment/home/cubit/userlist_cubit.dart';
import 'package:outshade_assignment/user_details/view/image_header.dart';
import 'package:outshade_assignment/user_form/cubit/user_form_cubit.dart';
import 'package:outshade_assignment/user_form/view/user_form.dart';
import 'package:user_repository/user_repository.dart';

class UserFormPage extends StatelessWidget {
  const UserFormPage({Key? key}) : super(key: key);

  static Route<void> route({required User user}) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (_) => UserFormCubit(user: user),
        child: const UserFormPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const UserFormView();
  }
}

class UserFormView extends StatelessWidget {
  const UserFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.select((UserFormCubit cubit) => cubit.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Form'),
      ),
      body: BlocListener<UserFormCubit, UserFormState>(
        listener: (context, state) {
          if (state.user.registrationState == RegistrationState.registered) {
            context.read<UserListCubit>().updateUserDetails(
                  state.user.age!,
                  state.user.gender!,
                  state.user.id,
                );
          }
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              ImageHeader(name: user.name),
              const Expanded(child: UserForm()),
            ],
          ),
        ),
      ),
    );
  }
}
