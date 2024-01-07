import 'package:geolocator/geolocator.dart';


class Location{
  double longitude =0;
  double latitide =100;

    Future<void> getCurrentLocation() async{
      try {
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        longitude = position.longitude;
        latitide = position.latitude;
      }
      catch (e){
        print(e);
      }
    }
}
