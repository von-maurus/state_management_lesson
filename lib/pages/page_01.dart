import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_lesson/bloc/users/user_cubit.dart';
import 'package:state_management_lesson/models/user.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 01'),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: _getBlocBuilder,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page-02'),
      ),
    );
  }

  Widget _getBlocBuilder(context, state) {
    if (state is UserInitial) {
      return const Center(child: Text("No information provided."));
    } else if (state is ActiveUser) {
      return UserInfo(user: state.user);
    } else if (state is UserError) {
      return Center(child: Text(state.message));
    } else {
      return const Center(child: Text("No information provided."));
    }
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "General",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              title: Text(user.name),
            ),
            ListTile(
              title: Text(user.age.toString()),
            ),
            const Text(
              "Profession",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: user.professions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(user.professions[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
