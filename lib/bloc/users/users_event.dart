part of 'users_bloc.dart';

@immutable
sealed class UsersEvent {}

class ActivateUser extends UsersEvent {
  final User newUser;

  ActivateUser({required this.newUser});
}

class AddUsersProfession extends UsersEvent {
  final String profession;
  final User user;

  AddUsersProfession({required this.profession, required this.user});
}
