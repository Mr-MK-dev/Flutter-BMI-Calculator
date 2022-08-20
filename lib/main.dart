import 'package:flutter/material.dart';
import 'package:practise/screens/home.dart';
import 'package:practise/screens/result.dart';

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
          '/': (context) => Home(),
          // '/result': 
        });
  }
}
