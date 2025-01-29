part of 'users_bloc.dart';

@immutable
sealed class UsersEvent {}

class ActivateUser extends UsersEvent {
  final User newUser;

  ActivateUser({required this.newUser});
}
