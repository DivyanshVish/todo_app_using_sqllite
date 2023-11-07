import 'package:flutter/material.dart';
import 'package:todo_app_using_sqllite/config/config.dart';
import 'package:todo_app_using_sqllite/screens/home_screen.dart';

class TODOApp extends StatelessWidget {
  const TODOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
