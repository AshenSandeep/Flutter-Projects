import 'package:clima_flutter_app/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter_app/services/location.dart';
import 'package:clima_flutter_app/services/networking.dart';
import 'package:clima_flutter_app/screens/loading_screen.dart';
const apiKey = 'cb8ae455e1cefb1b8f166de23b539b05';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();

}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude=0;
  double longitude=0;
  @override
  void initState() {
    super.initState();
    getLocationData();
  }
  void getLocationData() async{
     Location location = Location();

     await location.getCurrentLocation();
     
    latitude = ( location.latitide);
    longitude = (location.longitude);
    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

     var weatherData = await networkHelper.getData();
     print(weatherData.body);
     Navigator.push(context, MaterialPageRoute(builder: (context){
       return LocationScreen();
     }));

  }
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    );
  }
}

