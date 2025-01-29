import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_lesson/bloc/users/users_bloc.dart';
import 'package:state_management_lesson/pages/page_01.dart';
import 'package:state_management_lesson/pages/page_02.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UsersBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'page-01',
        routes: {
          'page-01': (_) => const Page01(),
          'page-02': (_) => const Page02(),
        },
      ),
    );
  }
}
