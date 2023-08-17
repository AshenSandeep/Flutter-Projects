import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('images/new.jpeg'),
                  radius: 50,
                ),
                const Text(
                  'ashen',
                  style: TextStyle(
                      fontFamily: 'Pasifico',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 280,
                  // color: Color(0xC1CEE7FF),
                  child: Center(
                    child: Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade100,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(50.0),
                  // ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 35,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          '+94 76 555 9784',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSans3',
                            color: Colors.teal.shade900,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(50.0),
                  // ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 23.0),
                  // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email_sharp,
                          size: 35,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'ashen60438@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSans3',
                            color: Colors.teal.shade900,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
