import 'dart:developer';

import 'package:citas_med_app/src/presentation/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String loadingPage = '/';
  static const String loginPage = '/login';
  static const String homePage = '/register';

  static const String settingsPage = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    log('--------------------------------------${settings.name}');

    switch (settings.name) {
      case loadingPage:
        return _fadeRoute(const RegisterPage(), loginPage, settings);
      case homePage:
        return _fadeRoute(const RegisterPage(), loginPage, settings);
      case loginPage:
        return _fadeRoute(const RegisterPage(), loginPage, settings);

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute _fadeRoute(
    Widget child,
    String routName,
    RouteSettings settings,
  ) {
    return MaterialPageRoute(builder: (context) => child, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Pagina No Encontrada posiblemente este en desarrollo'),
        ),
      );
    });
  }
}
