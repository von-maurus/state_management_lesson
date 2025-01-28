import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lesson/models/user.dart';
import 'package:state_management_lesson/services/user_service.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 02'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  userService.setUser(
                    User(
                      name: 'Mariavita Linda',
                      age: 32,
                      professions: ["Enfermera", "Magister en Educación", "Ingeniera en Administración"],
                    ),
                  );
                },
                color: Colors.blue,
                child: const Text(
                  "Set User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  userService.setUserAge(30);
                },
                color: Colors.blue,
                child: const Text(
                  "Change Age",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  userService.addUserProfession("Presienta de la república de Chile");
                },
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
  }
}
