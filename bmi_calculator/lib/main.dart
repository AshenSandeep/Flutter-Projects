import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Set your primary color here
        scaffoldBackgroundColor: Color(0xFF0A1931),
      ),
      home: InputPage(),
    );
  }
}
