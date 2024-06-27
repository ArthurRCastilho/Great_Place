import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import './google_api_util.dart';

class LocationUtil {
  static String generateLocationPreviewImage({
    required double latitude,
    required double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=${GoogleApiUtil.GOOGLE_API_KEY}';
  }

  // A API foi escondida :)

  static Future<String> getAddressFrom(LatLng position) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&location_type=ROOFTOP&result_type=street_address&key=${GoogleApiUtil.GOOGLE_API_KEY}');
    final response = await http.get(url);
    return jsonDecode(response.body)['results'][0]['formatted_adress'];
  }
}
