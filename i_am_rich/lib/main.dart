import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.blue[200],
          ),
          backgroundColor: Colors.white38,
          body: Center(
            child: Image(
              image: AssetImage('images/icon.webp'),
            ),
          ),
        )
    );
  }
}
