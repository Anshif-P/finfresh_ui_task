import 'package:finfresh_machine_task_ui/view/screen_home.dart';
import 'package:finfresh_machine_task_ui/view/screen_parent.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenParentNavigation(),
    );
  }
}
