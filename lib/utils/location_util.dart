import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:great_place/utils/google_api_util.dart';
import 'package:http/http.dart' as http;


class LocationUtil {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%$latitude,$longitude&key=${GoogleApiUtil.GOOGLE_API_KEY}';
  }

  static Future<String> getAddressFrom(LatLng position) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=${GoogleApiUtil.GOOGLE_API_KEY}');
    final response = await http.get(url);
    return json
        .decode(response.body)['results'][0]['formatted_address']
        .toString();
  }
}
