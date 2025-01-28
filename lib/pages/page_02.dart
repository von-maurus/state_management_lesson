import 'package:flutter/material.dart';
import 'package:state_management_lesson/models/user.dart';
import 'package:state_management_lesson/services/user_service.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = UserService();
    return StreamBuilder(
      stream: userService.userStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(userService.user?.name ?? 'No User Setted'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      UserService().saveUserData(
                          User(name: 'Mauro', age: 31, professions: ["Civil engineer", "Software engineer"]));
                    },
                    color: Colors.blue,
                    child: const Text(
                      "Set User",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      UserService().changeAge(30);
                    },
                    color: Colors.blue,
                    child: const Text(
                      "Change Age",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: const Text(
                      "Add profession",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
