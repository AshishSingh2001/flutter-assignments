import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outshade_assignment/user_details/cubit/user_details_cubit.dart';
import 'package:outshade_assignment/user_details/view/image_header.dart';
import 'package:user_repository/user_repository.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  static Route<void> route({required User user}) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (_) => UserDetailsCubit(user: user),
        child: const UserDetailsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const UserDetailsView();
  }
}

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.select((UserDetailsCubit cubit) => cubit.state.user);
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              ImageHeader(
                name: user.name,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: _DescriptionSection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.select(
      (UserDetailsCubit cubit) => cubit.state.user,
    );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            user.atype,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'Age : ${user.age}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            'Gender : ${user.gender.toString().split(".").last}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
