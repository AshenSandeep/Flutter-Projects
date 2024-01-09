import 'package:flutter/material.dart';
import 'package:clima_flutter_app/utilities/constants.dart';
import 'package:clima_flutter_app/services/weather.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});
  final locationWeather;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  int temperature = 0;
  int feelsLike = 0;
  String cityName = "";
  String weatherIcon = "";
  String messegeIcon = "";
  String weatherImage = "";
  String mainWeather = "";
  int humidity = 0;
  int windSpeed = 0;
  int isFail = 0;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        humidity = 0;
        windSpeed = 0;
        mainWeather = "Error !";
        messegeIcon = "Unable to get weather data.";
        cityName = "";
        isFail = 1;
        return;
      }
      double temp = weatherData['main']['temp'];
      feelsLike = weatherData['main']['feels_like'].toInt();
      humidity = weatherData['main']['humidity'];
      temperature = temp.toInt();
      windSpeed = weatherData['wind']['speed'].toInt();
      int condition = weatherData['weather'][0]['id'];
      mainWeather = weatherData['weather'][0]['main'];
      //weatherIcon = weather.getWeatherIcon(750);
      messegeIcon = weather.getMessage(temperature);
      weatherImage = weather.getWeatherImage(condition);
      cityName = weatherData['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(weatherImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: () async {
                        var weatherData = await weather.getLocationWeather();
                        updateUI(weatherData);
                      },
                      child: Icon(
                        Icons.near_me,
                        size: 70.0,
                        color: Color(0xFF00C1D4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: () async {
                        var typedName = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return CityScreen();
                          }),
                        );
                        if (typedName != null) {
                          var weatherData =
                              await weather.getCityweather(typedName);
                          updateUI(weatherData);
                        }
                      },
                      child: Icon(
                        Icons.location_city,
                        size: 70.0,
                        color: Color(0xFF00C1D4),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Center(
                  child: Text(
                    '  $weatherIcon',
                    style: kConditionTextStyle,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      mainWeather,
                      style: kMainWeatherStyle,
                    ),
                  ),
                  Text(
                    'Temperature: $temperature°',
                    style: kTempTextStyle,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Feels Like: $temperature°',
                    style: kTempTextStyle,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Humidity: $humidity %',
                    style: kTempTextStyle,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Wind Speed: $windSpeed m/s',
                    style: kTempTextStyle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Weather at ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Spartan MB',
                      ),
                    ),
                    Text(
                      cityName,
                      style: kCityNameStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),

              // Padding(
              //   padding: EdgeInsets.only(right: 15.0),
              //   child: Text(
              //     "It's $messegeIcon time in $cityName!",
              //     textAlign: TextAlign.right,
              //     style: kMessageTextStyle,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
//
