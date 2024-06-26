import 'package:flutter/material.dart';
import 'providers/great_places.dart';
import 'package:great_place/screens/place_form_screen.dart';
import 'package:great_place/screens/places_list_screen.dart';
import 'package:great_place/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primaryColor: Colors.cyan,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.cyan,
                secondary: Colors.black,
                tertiary: Colors.white,
              ),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.cyan,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }
}
