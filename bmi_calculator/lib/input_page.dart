import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseContainer.dart';
import 'iconWidget.dart';
import 'constants.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColour;
  Color femaleCardColour = kInactiveCardColour;
  Gender selectedGender = Gender.MALE;
  int height = 180;
  //1 = male, 0 = female
  // void updateColour(Gender gender) {
  //   // if (gender == Gender.MALE) {
  //   //   if (maleCardColour == inactiveCardColour) {        //these lines of codes are replaced by the Ternary
  //   //     maleCardColour = activeCardColour;
  //   //     femaleCardColour = inactiveCardColour;
  //   //
  //   //   } else {
  //   //     maleCardColour = inactiveCardColour;
  //   //   }
  //   // }
  //   //  if (gender == Gender.FEMALE) {
  //   //   if (femaleCardColour == inactiveCardColour) {
  //   //     femaleCardColour = activeCardColour;
  //   //     maleCardColour = inactiveCardColour;
  //   //   } else {
  //   //     femaleCardColour = inactiveCardColour;
  //   //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReuseContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.MALE;
                    });
                  },
                  colour: selectedGender == Gender.MALE
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconWideget(
                    icon: FontAwesomeIcons.mars,
                    text: "MALE",
                  ),
                )),
                Expanded(
                    child: ReuseContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.FEMALE;
                    });
                  },
                  colour: selectedGender == Gender.FEMALE
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild:
                      IconWideget(icon: FontAwesomeIcons.venus, text: "FEMALE"),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReuseContainer(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                          style: kTextNumberStyle,),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 250.0,
                      inactiveColor: Colors.white38,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseContainer(
                    colour: kActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseContainer(
                    colour: kActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 100, right: 100),
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
