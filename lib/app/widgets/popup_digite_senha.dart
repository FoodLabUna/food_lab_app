import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:food_lab/app/widgets/main_text_field.dart';

class PopupDigiteSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String senha;

    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      title: Row(
        children: [
          Expanded(child: Container()),
          Text(
            'Fechar',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning),
              SizedBox(width: 10),
              Text(
                'Digite sua senha atual',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Caso queira alterar dados dessa página, é necessário'
            'digitar sua senha',
          ),
          SizedBox(height: 10),
          MainTextField(
            icon: Icons.lock,
            hint: 'Insira sua senha',
            obscureText: true,
            onChanged: (value) {
              senha = value;
            },
          ),
          SizedBox(height: 10),
          Text('Caso tenha esquecido, clique em Ajuda!'),
        ],
      ),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {},
          child: Text(
            'Ajuda',
            style: TextStyle(color: Colors.black),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Salvar',
            style: TextStyle(color: Colors.black),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
