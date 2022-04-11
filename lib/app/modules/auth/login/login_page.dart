import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:another_flushbar/flushbar.dart';
import 'components/login_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  void initState() {
    super.initState();
    reaction<bool>((r) => controller.erro == true, (value) {
      if (value) {
        controller.setErro(false);
        Flushbar(
          title: 'Erro ao fazer login',
          message: controller.mensagem,
          flushbarPosition: FlushbarPosition.TOP,
          flushbarStyle: FlushbarStyle.GROUNDED,
          isDismissible: true,
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
          icon: Icon(Icons.warning_amber_rounded, color: Colors.white),
        ).show(context);
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      GetIt.I<PageController>().animateToPage(
                        1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    // onPressed: () => widget.onCloseTap(),
                    icon: Icon(
                      Icons.close,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Align(
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFf28705),
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child: Icon(
                                  Icons.person,
                                  size: 70,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 5,
                        ),
                        child: LoginTextField(
                          hint: 'E-mail',
                          icon: Icons.mail,
                          onChanged: controller.setEmail,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 5,
                        ),
                        child: LoginTextField(
                          hint: 'Senha',
                          icon: Icons.lock,
                          onChanged: controller.setSenha,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Container(
                          height: 45,
                          width: 160,
                          child: Observer(
                            builder: (_) {
                              // ignore: deprecated_member_use
                              return RaisedButton(
                                highlightElevation: 0.0,
                                splashColor: Colors.white,
                                highlightColor: Color(0xFFf28705),
                                elevation: 0.0,
                                color: Color(0xFFf28705),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                ),
                                child: controller.isLoading
                                    ? CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation(
                                          Colors.black,
                                        ),
                                      )
                                    : Text(
                                        "Entrar",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                onPressed: controller.isLoading
                                    ? null
                                    : controller.fazerLogin,
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
            // height: MediaQuery.of(context).size.height / 1.3,
            // width: MediaQuery.of(context).size.width,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
