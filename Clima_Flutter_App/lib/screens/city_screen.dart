import 'package:flutter/material.dart';
import 'package:clima_flutter_app/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 40.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: kTextFieldDecoration,
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.pop(context, cityName);
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 25.0),
              //     child: Text(
              //       'Get Weather',
              //       style: kButtonTextStyle,
              //     ),
              //   ),
              // ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // color: Colors.teal,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 0,
                        offset: Offset(0, -3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 30.0),
                    child: Text(
                      'Get Weather',
                      style: kButtonTextStyle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
