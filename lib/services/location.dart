import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0;
  double longitude = 0;

  Future<void> getCurrentLocation() async {
    try {
      bool isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();

      await Geolocator.checkPermission();
      await Geolocator.requestPermission();

      // Future<void> requestPermission() async {
      //   await Permission.location.request();
      // }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.lowest);
      print("hey");
      print(position);
    } catch (e) {
      print(e);
    }
  }
}
