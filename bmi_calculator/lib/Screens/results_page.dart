import 'package:bmi_calculator/Screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/reuseContainer.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final String resultType ;
  final String result;
  final String interpritation;
  ResultsPage({required this.result, required this.resultType,required this.interpritation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          '     BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            color: Color(0xFFFFA41B),
          ),
        ),
        backgroundColor: Color(0xFF082032),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results ",
                style: kResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseContainer(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      result.toString(),
                      style: kresultTextStyle,
                    ),
                  ),
                  Text(
                    resultType,
                    style: kBMItextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpritation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
         BottomButton(buttontitle: 'Re-Calculate', ontap: (){
           Navigator.pop(context);
         })
        ],
      ),
    );
  }
}
