import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_lesson/bloc/users/users_bloc.dart';
import 'package:state_management_lesson/models/user.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((UsersBloc bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 01'),
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return state.userExist ? UserInfo(user: state.user!) : const Center(child: Text("No info to show"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page-02'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text("Name"),
            ),
            ListTile(
              title: Text("Age"),
            ),
            Text(
              "Profession",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text("Profession 1"),
            ),
            ListTile(
              title: Text("Profession 2"),
            ),
            ListTile(
              title: Text("Profession 3"),
            ),
          ],
        ),
      ),
    );
  }
}
