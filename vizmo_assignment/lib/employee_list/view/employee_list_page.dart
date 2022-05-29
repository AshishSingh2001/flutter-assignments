import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo/employee_details/cubit/employee_details_cubit.dart';
import 'package:vizmo/employee_details/view/employee_details_page.dart';
import 'package:vizmo/employee_list/bloc/employee_list_bloc.dart';

import 'package:vizmo/employee_list/employee_list.dart';
import 'package:vizmo/filter/bloc/filter_bloc.dart';
import 'package:vizmo/filter/filter.dart';
import 'package:vizmo_api/vizmo_api.dart';


Color mainColor = const Color(0xff1B3954);
Color textColor = const Color(0xff727272);
Color accentColor = const Color(0xff16ADE1);
Color whiteText = const Color(0xffF5F5F5);

// ignore: must_be_immutable
class SearchState extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SearchState({Key? key}) : super(key: key);

  @override
  State<SearchState> createState() => _SearchStateState();
}

class _SearchStateState extends State<SearchState> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = [
    EmployeeList(),
    UserDetailsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              // showSearch(
              //   context: context,
              //   delegate: CustomSearchDelegate(),
              // );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.filter_list,
            ),
            onPressed: () {
              showFilterDialog(context);
            },
          ),
        ],
      ),
      body: BlocListener<EmployeeDetailsCubit, EmployeeDetailsState>(
        listener: (context, state) {
          if (state is EmployeeDetailsSucessState) {
            _onItemTapped(1);
          }
        },
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      // body: const EmployeeList(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pofile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Future<void> showFilterDialog(BuildContext context) {
    // context.read<FilterBloc>();
    return showDialog(
      context: context,
      builder: (BuildContext build) => const FilterDialog(),
    );
  }
}

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FilterBloc, FilterState>(
      listener: (context, state) {
        context.read<EmployeeListBloc>().add(
              EmployeeListFetchEvent(
                isDesc: state.isDesc,
                sortBy: state.sortBy,
              ),
            );
      },
      child: BlocBuilder<EmployeeListBloc, EmployeeListState>(
        builder: (context, state) {
          if (state is EmployeeListRequestFailure) {
            return const Center(child: Text('failed to fetch posts'));
          } else if (state is EmployeeListSuccessState) {
            if (state.employeeList.isEmpty) {
              return const Center(child: Text('no posts'));
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.employeeList.length
                    ? const BottomLoader()
                    : EmployeeListItem(employee: state.employeeList[index]);
              },
              itemCount: state.hasReachedMax
                  ? state.employeeList.length
                  : state.employeeList.length + 1,
              controller: _scrollController,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<EmployeeListBloc>().add(const EmployeeListScrollEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
