import 'package:flutter/material.dart';
import 'package:great_place/providers/great_places.dart';
import './screens/place_form_screen.dart';
import './screens/places_list_screen.dart';
import './utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.cyan,
                secondary: Colors.black,
                tertiary: Colors.white,
              ),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.cyan,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }
}
