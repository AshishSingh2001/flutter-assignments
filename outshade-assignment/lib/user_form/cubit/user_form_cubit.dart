import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'user_form_state.dart';

class UserFormCubit extends Cubit<UserFormState> {
  UserFormCubit({required User user}) : super(UserFormState(user: user));

  void updateUserDetails(int age, Gender gender) {
    emit(
      UserFormState(
        user: state.user.copyWith(
          age: age,
          gender: gender,
          registrationState: RegistrationState.registered,
        ),
      ),
    );
  }
}
