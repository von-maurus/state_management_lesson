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
