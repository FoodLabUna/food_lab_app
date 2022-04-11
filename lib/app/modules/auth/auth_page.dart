import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'apresentacao/apresentacao_page.dart';
import 'auth_controller.dart';
import 'login/login_page.dart';
import 'registrar/registrar_page.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key? key, this.title = "Auth"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final pageController = PageController(initialPage: 1);
  final controller = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: PageView(
        controller: GetIt.I<PageController>(),
        physics: NeverScrollableScrollPhysics(),
        children: [
          LoginPage(),
          ApresentacaoPage(
            () {
              pageController.animateToPage(
                0,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            () {
              pageController.animateToPage(
                2,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          ),
          RegistrarPage(),
        ],
      ),
    );
  }
}
