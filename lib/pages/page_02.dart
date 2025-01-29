import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_lesson/bloc/users/user_cubit.dart';
import 'package:state_management_lesson/models/user.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitUser = context.read<UserCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 02'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () => cubitUser.setUser(
                  User(
                    name: 'Mauro',
                    age: 30,
                    professions: ["Ingeniero Civil Informático", "Amateur Musician", "00s Gamer"],
                  ),
                ),
                color: Colors.blue,
                child: const Text(
                  "Set User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () => cubitUser.updateUserAge('Mauro', 32),
                color: Colors.blue,
                child: const Text(
                  "Change Age",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () => cubitUser.addUserProfession("Mauro", "Nirvanero"),
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
