import 'package:flutter/material.dart';
import 'package:food_lab/app/widgets/popup_perfil.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  BaseAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: this.title == null
          ? Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logoLogin.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Food Lab",
                    style: TextStyle(
                      color: Color(0xFFf28705),
                      fontFamily: "LexendDeca",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Text(
              title ?? '',
              style: TextStyle(
                color: Color(0xFFf28705),
                fontFamily: "LexendDeca",
                fontWeight: FontWeight.bold,
              ),
            ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.account_circle, color: Color(0xFFf28705), size: 35),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => PopupPerfil(),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
