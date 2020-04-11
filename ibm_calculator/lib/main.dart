import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(IBMCalculator());

class IBMCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IBM Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF191740),
        scaffoldBackgroundColor: Color(0xFF191740),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(title: 'IBM 計算'),
    );
  }
}
