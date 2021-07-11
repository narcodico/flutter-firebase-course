import 'package:data_sources/data_sources.dart' hide User;
import 'package:shared/shared.dart';

import 'models/models.dart';

part 'firebase_user_repository.dart';

abstract class UserRepository {
  /// Current user as a stream.
  Stream<User> get watchUser;

  /// Gets the current user synchronously.
  User get user;

  /// Gets the initial `watchUser` emission.
  ///
  /// Returns `User.none` when an error occurs.
  Future<User> getOpeningUser();

  /// Logs out the current user.
  Future<void> logOut();
}