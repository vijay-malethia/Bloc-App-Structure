import 'package:flutter/material.dart';
import 'package:demo/presentation/screens/profile/profile_screen.dart';
import 'package:demo/presentation/screens/settings/settings_screen.dart';
import 'package:demo/presentation/screens/login/login_screen.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
