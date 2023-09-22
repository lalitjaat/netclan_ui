
import 'package:flutter/material.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:geolocator/geolocator.dart';



Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
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
            style: const TextStyle(fontSize: 18, color: Colors.white),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}


