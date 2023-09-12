import 'package:flutter/material.dart';
import 'input_page.dart';


void main(){
  runApp(BMI());
}
class BMI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Set your primary color here
        scaffoldBackgroundColor: Colors.orange.shade400,

      ),
      home:InputPage(),
    );
  }
}
