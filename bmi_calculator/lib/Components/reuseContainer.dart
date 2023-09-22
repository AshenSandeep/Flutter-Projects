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
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10.0),
        //   color: colour,
        // ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0A4D68), // Custom colorful gradient start color
              Color(0xFF088395),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class ReuseContainer extends StatelessWidget {
//   final Color color;
//   final Widget? cardChild;
//   final VoidCallback? onPress;
//
//   ReuseContainer({required this.color, this.cardChild, this.onPress});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         child: cardChild,
//         margin: EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: color,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: Offset(0, 3),
//             ),
//           ],
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Colors.white.withOpacity(0.1),
//               Colors.black.withOpacity(0.1),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
