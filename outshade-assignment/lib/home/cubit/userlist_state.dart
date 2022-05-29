part of 'userlist_cubit.dart';

enum UserListStatus { initial, loading, success, failure }

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    @Default(UserListStatus.initial) UserListStatus status,
    List<User>? users,
  }) = _UserListState;

  factory UserListState.fromJson(Map<String, dynamic> json) =>
      _$UserListStateFromJson(json);
}
