import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo/employee_details/cubit/employee_details_cubit.dart';
import 'package:vizmo/employee_list/bloc/employee_list_bloc.dart';
import 'package:vizmo/employee_list/view/employee_list_page.dart';
import 'package:vizmo/filter/bloc/filter_bloc.dart';
import 'package:vizmo_repository/vizmo_repository.dart';

// ignore: must_be_immutable
class App extends StatelessWidget {
  const App({Key? key, required VizmoRepository vizmoRepository})
      : _vizmoRepository = vizmoRepository,
        super(key: key);

  final VizmoRepository _vizmoRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _vizmoRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FilterBloc(),
          ),
          BlocProvider(
            create: (context) => EmployeeListBloc(_vizmoRepository)
              ..add(const EmployeeListFetchEvent()),
          ),
          BlocProvider(
            create: (context) => EmployeeDetailsCubit(_vizmoRepository),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      home: SearchState(),
    );
  }
}
