import 'package:flutter/material.dart';
import 'package:demo/features/home/presentation/screens/home_screen.dart';
import 'package:demo/features/counter/presentation/screens/counter_screen.dart';
import 'package:demo/features/settings/presentation/screens/settings_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/counter':
        return MaterialPageRoute(builder: (_) => CounterScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
