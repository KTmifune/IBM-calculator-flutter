import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(IBMCalculator());

class IBMCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IBM Calculator',
      theme: ThemeData(
        primaryColor: Color(0xFF445A64),
        scaffoldBackgroundColor: Color(0xFF445A64),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(title: 'IBM 計算'),
    );
  }
}
