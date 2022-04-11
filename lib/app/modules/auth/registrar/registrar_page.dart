import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:food_lab/app/modules/auth/registrar/components/registrar_button.dart';
import 'package:food_lab/app/modules/auth/registrar/components/registrar_text_field.dart';
import 'package:food_lab/app/widgets/titulo.dart';
import 'registrar_controller.dart';

class RegistrarPage extends StatefulWidget {
  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {
  final controller = RegistrarController();

  @override
  void initState() {
    super.initState();
    reaction<bool>((r) => controller.erroCadastro == true, (value) {
      if (value) {
        controller.setErroCadastro(false);
        Flushbar(
          title: 'Erro ao registrar',
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
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 10,
                    child: IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        GetIt.I<PageController>().animateToPage(
                          1,
                          curve: Curves.ease,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      icon: Icon(
                        Icons.close,
                        size: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              height: 50,
              width: 50,
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: Titulo(
                            'Olá, vamos começar?',
                            leftDotColor: Color(0xFFf28705),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  RegistrarTextField(
                    icon: Icons.perm_contact_calendar,
                    hint: 'Nome completo',
                    onChanged: controller.setNome,
                  ),
                  SizedBox(height: 10),
                  RegistrarTextField(
                    icon: Icons.email,
                    hint: 'E-mail',
                    onChanged: controller.setEmail,
                  ),
                  SizedBox(height: 10),
                  RegistrarTextField(
                    icon: Icons.lock,
                    obscureText: true,
                    onChanged: controller.setSenha,
                    hint: 'Senha',
                  ),
                  SizedBox(height: 10),
                  RegistrarTextField(
                    icon: Icons.lock,
                    obscureText: true,
                    onChanged: controller.setConfSenha,
                    hint: 'Confirme sua senha',
                  ),
                  SizedBox(height: 20),
                  Observer(builder: (_) {
                    return RegistrarButton(
                      isLoading: controller.isLoading,
                      onTap: () {
                        controller.fazerRegistro();
                      },
                    );
                  }),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
