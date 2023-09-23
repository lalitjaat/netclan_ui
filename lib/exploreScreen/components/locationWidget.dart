import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

 
void asklocation()async{
Map<Permission, PermissionStatus> status = await [
Permission.location
 ].request () ;
}

void getlocation() async{
  if(await Permission.location.serviceStatus.isEnabled){}
  else{
    print("Not got location");
  }
}

Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,forceAndroidLocationManager: true
    );
  }

  Future<List<Placemark>> getCityAndCountry() async {
    final position = await getCurrentLocation();
    return await GeocodingPlatform.instance
        .placemarkFromCoordinates(position.latitude, position.longitude);
  }

class locationWidget extends StatelessWidget {
  const locationWidget({
    super.key,
    required Future<List<Placemark>> cityAndCountry,
  }) : _cityAndCountry = cityAndCountry;

  final Future<List<Placemark>> _cityAndCountry;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Placemark>>(
      future: _cityAndCountry,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          final city = snapshot.data![0].locality ?? '';
          final country = snapshot.data![0].country ?? '';
          return Text(
            '$city, $country',
            style:  TextStyle(fontSize: 15.sp, color: Colors.white),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Text("Loading...", style:  TextStyle(fontSize: 15.sp, color: Colors.white));
        }
      },
    );
  }
}


