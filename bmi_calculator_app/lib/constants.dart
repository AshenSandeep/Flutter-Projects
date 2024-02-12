import 'package:flutter/material.dart';

const kTextFieldStyles = InputDecoration(
  hintText: 'Weight',

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(
      color: Color(0xFF7752FE),
      width: 2.5,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(
      color: Colors.blueAccent,
      width: 2.5,
    ),
  ),
);
