import 'package:clima_flutter_app/services/location.dart';
import 'package:clima_flutter_app/services/networking.dart';

const apiKey = 'cb8ae455e1cefb1b8f166de23b539b05';
const weatherURL = "https://api.openweathermap.org/data/2.5/weather";

class WeatherModel {
  Future<dynamic> getCityweather(String cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$weatherURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    print(weatherData);
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$weatherURL?lat=${location.latitide}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
  //
  // String getWeatherIcon(int condition) {
  //   if (condition < 300) {
  //     return '🌩';
  //   } else if (condition < 400) {
  //     return '🌧';
  //   } else if (condition < 600) {
  //     return '☔️';
  //   } else if (condition < 700) {
  //     return '☃️';
  //   } else if (condition < 800) {
  //     return '🌫';
  //   } else if (condition == 800) {
  //     return '☀️';
  //   } else if (condition <= 804) {
  //     return '☁️';
  //   } else {
  //     return '🤷‍';
  //   }
  // }
  String getWeatherImage(int condition) {
    if (condition < 300) {
      return 'images/rainCloud.jpg';
    } else if (condition < 400) {
      return 'images/rainCloud.jpg';
    } else if (condition < 600) {
      return 'images/rain.jpg';
    } else if (condition < 700) {
      return 'images/snow.jpg';
    } else if (condition < 800) {
      return 'images/mist.jpg';
    } else if (condition == 800) {
      return 'images/sun.jpg';
    } else if (condition <= 804) {
      return 'images/cloudy.jpg';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
