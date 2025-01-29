import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:state_management_lesson/models/user.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersInitial()) {
    on<UsersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
