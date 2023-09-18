import 'package:flutter/material.dart';


class ReuseContainer extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback ? onPress;

  ReuseContainer({required this.colour,   this.cardChild,  this.onPress});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,         //there is an error in this line
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
