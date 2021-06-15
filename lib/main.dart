/*
 * @Author: clingxin
 * @Date: 2021-06-15 16:43:34
 * @LastEditors: clingxin
 * @LastEditTime: 2021-06-15 17:23:34
 * @FilePath: /flutter_notion/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notion Budget Tracker',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: BudgetScreen(),
    );
  }
}

class BudgetScreen extends StatefulWidget {
  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
