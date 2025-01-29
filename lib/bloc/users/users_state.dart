part of 'users_bloc.dart';

@immutable
sealed class UsersState {
  final bool userExist;
  final User? user;

  const UsersState({this.user, this.userExist = false});
}

final class UsersInitial extends UsersState {
  const UsersInitial() : super(userExist: false, user: null);
}

class UserSetState extends UsersState {
  final User newUser;
  const UserSetState(this.newUser) : super(userExist: true, user: newUser);
}
