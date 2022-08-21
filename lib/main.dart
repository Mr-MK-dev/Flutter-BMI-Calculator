import 'package:flutter/material.dart';
import 'package:practise/layout/login.dart';

import 'layout/bmi_home.dart';
import 'layout/todo/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(),
        initialRoute: '/',
        routes: {
          '/': (context) => TodoApp(),
          // '/result':
        });
  }
}
