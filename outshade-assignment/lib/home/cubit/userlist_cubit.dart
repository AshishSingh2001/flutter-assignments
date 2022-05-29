import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'userlist_cubit.freezed.dart';
part 'userlist_cubit.g.dart';
part 'userlist_state.dart';

class UserListCubit extends HydratedCubit<UserListState> {
  UserListCubit({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const UserListState());

  final UserRepository _userRepository;

  Future<void> fetchAllusers() async {
    if (state.status != UserListStatus.initial) {
      return;
    }
    emit(UserListState(
      status: UserListStatus.loading,
      users: state.users,
    ));

    try {
      final users = await _userRepository.getUsers();
      emit(UserListState(
        status: UserListStatus.success,
        users: users,
      ));
    } on Exception {
      emit(UserListState(
        status: UserListStatus.failure,
        users: state.users,
      ));
    }
  }

  void updateUserDetails(int age, Gender gender, String id) {
    if (state.status == UserListStatus.success) {
      final newUsers = <User>[];
      for (final element in state.users!) {
          if (element.id == id) {
            newUsers.add(
              element.copyWith(
                age: age,
                gender: gender,
                registrationState: RegistrationState.registered,
              ),
            );
          } else {
            newUsers.add(element);
          }
        }
      emit(
        UserListState(
          // isDirty: !state.isDirty,
          status: state.status,
          users: newUsers,
        ),
      );
    } else {
      fetchAllusers();
    }
  }

  @override
  UserListState? fromJson(Map<String, dynamic> json) {
    final temp = UserListState.fromJson(json);
    return temp;
  }

  @override
  Map<String, dynamic>? toJson(UserListState state) {
    if (state.status == UserListStatus.success) {
      return state.toJson();
    } else {
      return null;
    }
  }
}
