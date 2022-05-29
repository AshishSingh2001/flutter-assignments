part of 'user_form_cubit.dart';

class UserFormState extends Equatable {
  const UserFormState({required this.user});

  final User user;

  @override
  List<Object> get props => [user];
}
