import 'package:flutter/material.dart';

const textStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.bold,
);

class iconWideget extends StatelessWidget {
   final String text;
   final IconData icon;

  iconWideget(this.icon,this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(text, style: textStyle),
      ],
    );
  }
}
