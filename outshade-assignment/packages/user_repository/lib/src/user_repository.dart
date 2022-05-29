import 'package:user_repository/src/exception.dart';
import 'package:user_repository/src/models/user.dart';
import 'package:user_repository/src/user_json.dart';

/// {@template user_repository}
/// A template repository that uses the
/// {@endtemplate}
class UserRepository {
  /// {@macro user_repository}
  const UserRepository();

  /// Get list of all players
  Future<List<User>> getUsers() {
    try {
      final users = <User>[];
      final usersRaw = data[0]['users'];
      for (final user in usersRaw!) {
        users.add(User(
          name: user['name']!,
          id: user['id']!,
          atype: user['atype']!,
        ));
      }
      return Future.delayed(const Duration(seconds: 2), () => users);
    } catch (e) {
      throw AppException();
    }
  }
}
