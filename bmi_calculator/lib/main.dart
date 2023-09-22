import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green, // Set your primary color here
        scaffoldBackgroundColor: Color(0xFF0A1931),    //0xFF0A1931
      ),
      home: InputPage(),
    );
  }
}
