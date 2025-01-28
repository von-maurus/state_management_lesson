import 'package:flutter/material.dart';
import 'package:state_management_lesson/models/user.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get userExists => _user != null;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void setUserAge(int age) {
    if (_user != null) {
      _user?.age = age;
      notifyListeners();
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }

  void addUserProfession(String profession) {
    if (_user != null) {
      _user?.professions.add(profession);
      notifyListeners();
    }
  }
}
