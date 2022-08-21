import 'package:flutter/material.dart';
import 'package:practise/layout/todo/archiveLayout.dart';
import 'package:practise/layout/todo/doneLayout.dart';
import 'package:practise/layout/todo/todoLayout.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  int currentLayout = 0;
  List<Widget> screens = [ToDo(), Done(), Archive()];
  List<String> todoTitles = ['ToDo', 'Done', 'Archive'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todoTitles[currentLayout]),
      ),
      body: Container(child: screens[currentLayout]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          currentIndex: currentLayout,
          onTap: (value) {
            setState(() {
              currentLayout = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'ToDo'),
            BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
            BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archive')
          ]),
    );
  }
}
