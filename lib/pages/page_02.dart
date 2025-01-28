import 'package:flutter/material.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 02'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text(
                  "Set User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {},
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
  }
}
