// User Cubit
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_lesson/models/user.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void setUser(User user) {
    emit(ActiveUser(user));
  }

  void updateUserAge(String name, int newAge) {
    if (state is ActiveUser) {
      final currentUser = (state as ActiveUser).user;
      if (currentUser.name == name) {
        // TODO REMINDER: its not the best or the idea to mutate a previous state, so better to make a new one.
        // currentUser.age = newAge;
        // emit(ActiveUser(currentUser));
        final updatedUser = currentUser.copyWith(age: newAge);
        emit(ActiveUser(updatedUser));
      }
    }
  }

  void addUserProfession(String name, String profession) {
    if (state is ActiveUser) {
      final currentUser = (state as ActiveUser).user;
      if (currentUser.name == name) {
        currentUser.professions.add(profession);
        emit(ActiveUser(currentUser));
      }
    }
  }
  // void fetchUsers() async {
  //   try {
  //     emit(UserLoading());
  //     // Simulate network call
  //     await Future.delayed(Duration(seconds: 2));
  //     final users = [
  //       User(id: '1', name: 'John Doe', email: 'john.doe@example.com'),
  //       User(id: '2', name: 'Jane Smith', email: 'jane.smith@example.com'),
  //     ];
  //     emit(UserLoaded(users));
  //   } catch (e) {
  //     emit(UserError('Failed to fetch users'));
  //   }
  // }
}
