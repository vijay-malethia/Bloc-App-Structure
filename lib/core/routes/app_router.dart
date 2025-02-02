import 'package:demo/presentation/screens/home/home_screen.dart';
import 'package:demo/presentation/screens/auth/login/login_screen.dart';
import 'package:demo/presentation/screens/main_screen.dart';
import 'package:demo/presentation/screens/profile/profile_screen.dart';
import 'package:demo/presentation/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/main':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
