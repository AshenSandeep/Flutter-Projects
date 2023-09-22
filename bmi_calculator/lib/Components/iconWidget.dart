import 'package:flutter/material.dart';
import '../constants.dart';

class IconWideget extends StatelessWidget {
   final String? text;
   final IconData? icon;

  IconWideget({this.icon,this.text});

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
        Text(text ?? '', style: kTextStyle),
       // ActionButton(buttonText: 'OK',),
      ],
    );
  }
}



