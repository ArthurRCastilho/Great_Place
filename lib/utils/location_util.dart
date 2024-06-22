const GOOGLE_API_KEY = 'AIzaSyBJGxCR_hFSK_hBxcHLR6iNeNf5fvonBWI';

class LocationUtil {
  static String generateLocationPreviewImage({
    required double latitude,
    required double logitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$logitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$logitude&key=$GOOGLE_API_KEY';
  }
}
