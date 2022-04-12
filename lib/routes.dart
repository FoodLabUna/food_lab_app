import 'package:flutter/material.dart';
import 'package:food_lab/app/modules/dados_pessoais/dados_pessoais_page.dart';
import 'package:food_lab/app/modules/seguranca/seguranca_page.dart';
import 'app/modules/splash_screen/splash_page.dart';
import 'app/modules/base_screen/base_screen_page.dart';
import 'app/modules/auth/auth_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      '/': (_) => SplashPage(),
      '/base': (_) => BaseScreenPage(),
      '/auth': (_) => AuthPage(),
      '/dados_pessoais': (_) => DadosPessoaisPage(),
      '/seguranca': (_) => SegurancaPage(),
    };
  }
}
