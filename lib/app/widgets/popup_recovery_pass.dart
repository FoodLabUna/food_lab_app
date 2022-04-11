import 'package:flutter/material.dart';

class ShowRecovery extends StatelessWidget {
  ShowRecovery({this.callBack});

  final Function? callBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.only(bottom: 0, left: 15, right: 15, top: 0),
      titlePadding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.help,
              color: Colors.black,
              size: 27,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Precisa de ajuda para Entrar?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Digite o e-mail que você perdeu o acesso e iremos te enviar mais instruções.',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: "LexendDeca",
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 5,
                top: 10,
              ),
              child: TextFormField(
                /*   enabled: !userManager.isLoading,
                validator: (email){
                  if(!emailValid(email)){
                    return 'Email inválido!';
                  }
                  return null;
                },*/
                // controller: _emailController,

                obscureText: false,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                    hintText: 'E-mail',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                    prefixIcon: Padding(
                      child: IconTheme(
                        data: IconThemeData(color: Colors.black),
                        child: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                    )),
              ),
            ),
          ],
        ),
      ),
      actionsPadding: EdgeInsets.only(top: 5, right: 1, left: 1, bottom: 5),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          child: Text(
            'Cancelar',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        Container(
          height: 35,
          width: 90,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.black12,
          ),
          // ignore: deprecated_member_use
          child: FlatButton(
            child: Text(
              'Enviar',
              style: TextStyle(color: Colors.black),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
