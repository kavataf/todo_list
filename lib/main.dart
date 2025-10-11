import 'package:flutter/material.dart';
import 'package:todo_list/add_task.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'package:todo_list/task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        TaskScreen.id: (context) => const TaskScreen(),
        AddTask.id: (context) => const AddTask(),
      },
    );
  }
}

