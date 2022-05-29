import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outshade_assignment/home/cubit/userlist_cubit.dart';
import 'package:outshade_assignment/user_details/view/user_details_page.dart';
import 'package:outshade_assignment/user_form/view/user_form_page.dart';
import 'package:user_repository/user_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<UserListCubit>().fetchAllusers();
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Users'),
      ),
      body: const Center(
        child: _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((UserListCubit cubit) => cubit.state.status);

    switch (status) {
      case UserListStatus.initial:
        return const SizedBox();
      case UserListStatus.loading:
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      case UserListStatus.failure:
        return const Center(
          child: Text('Error Loading users'),
        );
      case UserListStatus.success:
        return const _UserList();
    }
  }
}

class _UserList extends StatelessWidget {
  const _UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newState = context.select((UserListCubit cubit) => cubit.state);
    final users = newState.users;
    return ListView(
      children: [
        for (final user in users!) ...[
          ListTile(
            onTap: () {
              if (user.registrationState == RegistrationState.registered) {
                Navigator.of(context).push(
                  UserDetailsPage.route(user: user),
                );
              } else {
                Navigator.of(context).push(UserFormPage.route(user: user));
              }
            },
            title: Text(user.name),
            subtitle: Text(
              user.atype,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Icons.chevron_right_sharp),
          ),
          const Divider(),
        ],
      ],
    );
  }
}
