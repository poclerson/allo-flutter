import 'package:flutter/material.dart';
import 'pages/location_detail/location_detail.dart';
import 'pages/locations/locations.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(), home: Locations(), theme: _theme());
  }

  RouteFactory _routes() {
    return (settings) {
      final Map arguments = settings.arguments as Map;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(toolbarTextStyle: AppBarTextStyle),
        textTheme:
            TextTheme(titleMedium: TitleTextStyle, bodyMedium: Body1TextStyle));
  }
}
