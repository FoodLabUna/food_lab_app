import 'package:flutter/material.dart';
import 'app/modules/splash_screen/splash_page.dart';
import 'app/modules/base_screen/base_screen_page.dart';
import 'app/modules/auth/auth_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      '/': (_) => SplashPage(),
      '/base': (_) => BaseScreenPage(),
      '/auth': (_) => AuthPage(),
    };
  }
}
