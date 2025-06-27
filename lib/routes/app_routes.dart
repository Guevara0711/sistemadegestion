import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/dashboard_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String dashboard = '/dashboard';

  static Map<String, Widget Function(BuildContext)> get routes => {
    login: (context) => const LoginScreen(),
    dashboard: (context) => const DashboardScreen(),
  };
}