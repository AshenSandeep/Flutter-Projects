import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseContainer.dart';
import 'iconWidget.dart';
import 'constants.dart';
import 'results_page.dart';
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
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',

            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: Color(0xFFFFA41B),
            ),
          ),
        ),
        backgroundColor: Color(0xFF082032),
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
                      Text(
                        height.toString(),
                        style: kTextNumberStyle,
                      ),
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
                      onChanged: (double newValue) {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ReuseContainer(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kTextNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  },
                                );
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseContainer(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kTextNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    if (age > 0) {
                                      age--;
                                    }
                                  },
                                );
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left:
              100, right: 100),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Calculate BMI',
                  style: kLargeButtonStyle,
                ),
              ),
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.teal,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF5C5470),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
