import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final void Function() ontap;
  final String buttontitle;
  BottomButton({required this.buttontitle, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 100, right: 100),
        width: double.infinity,
        child: Center(
          child: Text(
            buttontitle,
            style: kLargeButtonStyle,
          ),
        ),
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF6CCF4E),
        ),
      ),
    );
  }
}
