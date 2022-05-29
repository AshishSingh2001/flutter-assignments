part of 'user_details_cubit.dart';

class UserDetailsState extends Equatable {
  const UserDetailsState({required this.user});

  final User user;

  @override
  List<Object> get props => [user];
}
