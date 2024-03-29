import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final Color colour;
  final String buttonName;
  final VoidCallback onPressed;
  RoundedButton(
      {required this.colour,
        required this.buttonName,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // Size deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42.0,
          child: Text(
            buttonName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
