part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final userExist = false;

  @override
  String toString() {
    return 'UserInitial: ${{userExist: userExist}}';
  }
}

class ActiveUser extends UserState {
  final userExist = true;
  final User user;

  ActiveUser(this.user);

  @override
  String toString() {
    return 'ActiveUser: {name: ${user.name}, age: ${user.age}}';
  }
}

class UserError extends UserState {
  String get message => "Huston we have a problem";
}
