import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lesson/models/user.dart';
import 'package:state_management_lesson/services/user_service.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 01'),
      ),
      body: userService.userExists
          ? UserInfo(user: userService.user!)
          : const Center(
              child: Text("No information"),
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
              "Professions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
