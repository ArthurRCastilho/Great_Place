import 'dart:io';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;

  const PlaceLocation(
      {required this.latitude, required this.longitude, required this.address});
}

class Place {
  final String id;
  final String title;
  final String location; // String temporaria
  final File image;

  Place({
    required this.id,
    required this.title,
    required this.image,
    required this.location,
  });
}
