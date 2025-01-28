import 'dart:async';

import 'package:state_management_lesson/models/user.dart';

class UserService {
  // Stream controller for user
  final StreamController<User?> _userController = StreamController<User?>.broadcast();

  // Stream getter
  Stream<User?> get userStream => _userController.stream;

  User? _user = null;
  User? get user => _user;
  bool get userExist => _user != null ? true : false;
  // Private constructor
  UserService._privateConstructor();

  // Singleton instance
  static final UserService _instance = UserService._privateConstructor();

  // Factory constructor to return the singleton instance
  factory UserService() {
    return _instance;
  }

  // Dispose method to close the stream controller
  void dispose() {
    _userController.close();
  }

  // Example method to demonstrate functionality
  String getUserData() {
    return "User data";
  }
  // Method to update user and add to stream

  void saveUserData(User user) {
    _user = user;
    _userController.add(_user);
    print("User data saved: $user");
  }

  void changeAge(int age) {
    _user?.age = age;
    _userController.add(_user);
  }
}
