
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseContainer.dart';
import 'iconWidget.dart';


const newcolour = Color(0xFF1D1E1F);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseContainer(
                      colour: newcolour,
                    cardChild: iconWideget(icon: FontAwesomeIcons.mars,
                      text: "MALE",),
                  ),
                ),
                Expanded(
                  child: ReuseContainer(colour: newcolour,
                      cardChild: iconWideget(icon: FontAwesomeIcons.venus,
                                             text: "FEMALE"),
                ),
                ),
              ],
            ),
          ),
          Expanded(

            child: ReuseContainer(colour: newcolour,cardChild: iconWideget(icon: FontAwesomeIcons.venus,
                text: "FEMALE"),)
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseContainer(colour: newcolour,cardChild: iconWideget(icon: FontAwesomeIcons.venus,
                      text: "FEMALE")),
                ),
                Expanded(
                  child: ReuseContainer(colour: newcolour,cardChild: iconWideget(icon: FontAwesomeIcons.venus,
                      text: "FEMALE")),
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
                  fontSize: 20
                ),
              ),
            ),
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}

