import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:food_lab/app/modules/auth/components/auth_button.dart';
import 'package:food_lab/app/modules/auth/components/logo.dart';

import 'package:food_lab/app/widgets/popup_recovery_pass.dart';

class ApresentacaoPage extends StatelessWidget {
  final Function onRegistroTap;
  final Function onLoginTap;

  const ApresentacaoPage(this.onRegistroTap, this.onLoginTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fundo_login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AuthLogo(),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 45, right: 45),
            child: Container(
              height: 50,
              child: AuthButton(
                label: 'Registre-se',
                icon: Icons.plus_one,
                onPressed: () {
                  GetIt.I<PageController>().animateToPage(
                    2,
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 500),
                  );
                  // showModalBottomSheet(
                  //   isScrollControlled: true,
                  //   context: context,
                  //   builder: (ctx) {
                  //     return Container(
                  //       // height: 9100,
                  //       height: MediaQuery.of(context).size.height * 0.85,
                  //       child: RegistrarPage(),
                  //     );
                  //   },
                  // );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 45, right: 45),
            child: Container(
              child: AuthButton(
                icon: Icons.supervised_user_circle,
                label: 'Login',
                onPressed: () {
                  GetIt.I<PageController>().animateToPage(
                    0,
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 500),
                  );
                  // _loginSheet();
                  // showModalBottomSheet(
                  //   isScrollControlled: true,
                  //   context: context,
                  //   builder: (ctx) {
                  //     return Container(
                  //       // height: 9100,
                  //       height: MediaQuery.of(context).size.height * 0.75,
                  //       child: LoginPage(),
                  //     );
                  //   },
                  // );
                },
              ),
              height: 50,
            ),
          ),
          Padding(
            child: Container(
              child: Text(
                "Ou",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "LexendDeca",
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              height: 40,
            ),
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          ),
          Padding(
            child: Container(
              // ignore: deprecated_member_use
              child: OutlineButton(
                highlightedBorderColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 1.5),
                highlightElevation: 0.0,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 35),
                      Image.asset(
                        'assets/images/google_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Login com Google",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () async {
                  print('ENTREI');
                  //String ret = await GetIt.I<AuthStore>().loginGoogle();
                  // if (ret == "ok") {
                  // await GetIt.I<AuthStore>().getUser();
                  // Get.toNamed('/base');
                  //}
                  // controller.logaGoogle();
                  //controller.fazerLoginGoogle();
                },
              ),
              height: 50,
            ),
            padding: EdgeInsets.only(top: 10, left: 45, right: 45),
          ),
          Padding(
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => ShowRecovery(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Preciso de ajuda.",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: "LexendDeca",
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              height: 40,
            ),
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
