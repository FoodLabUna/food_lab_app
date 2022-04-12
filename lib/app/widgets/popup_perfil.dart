import 'package:get/get.dart';
import 'package:food_lab/app/stores/auth_store.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PopupPerfil extends StatelessWidget {
  final AuthStore? authStore = GetIt.I<AuthStore>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.all(0.5),
      titlePadding: EdgeInsets.all(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 2,
      title: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_circle,
              color: Color(0xFFf28705),
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  authStore!.user?.nome ?? '',
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  authStore!.user?.email ?? "userManager.user.email",
                  style: TextStyle(fontSize: 11),
                ),
              ],
            ),
            SizedBox(
              width: 5,
              height: 55,
            ),
            Image.asset(
              "assets/images/logoLogin.png",
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(color: Color(0xFFf28705)),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
              child: Column(
                children: [
                  PopupPerfilItem(
                    icon: Icons.assignment_ind,
                    title: 'Dados Pessoais',
                    subtitle: 'Nome, e-mail...',
                    onTap: () => Get.toNamed('/dados_pessoais'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PopupPerfilItem(
                    icon: Icons.fingerprint,
                    title: 'Segurança',
                    subtitle: 'Reset de Senha',
                    onTap: () => Get.toNamed('/seguranca'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PopupPerfilItem(
                    onTap: () async {
                      Get.toNamed('/auth');
                      await authStore!.fazerLogoff();
                    },
                    title: 'Logoff',
                    subtitle: 'Até a próxima',
                    icon: Icons.exit_to_app,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              color: Colors.black12,
              padding: EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Sobre o App Food Lab',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    VerticalDivider(
                      color: Colors.black,
                      endIndent: 10,
                      thickness: 0.5,
                      indent: 10,
                    ),
                    Spacer(),
                    Text(
                      'Versão do App ' + dotenv.env['VERSION_APP'].toString(),
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopupPerfilItem extends StatelessWidget {
  final Function? onTap;
  final String? title;
  final String? subtitle;
  final IconData? icon;

  const PopupPerfilItem({
    this.onTap,
    this.title,
    this.subtitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon ?? Icons.exit_to_app,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle ?? '',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 20,
          ),
        ],
      ),
    );
  }
}
