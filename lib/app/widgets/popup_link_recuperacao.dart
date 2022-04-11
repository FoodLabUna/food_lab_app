import 'package:flutter/material.dart';

class PopupLinkRecuperacao extends StatelessWidget {
  final String email;

  PopupLinkRecuperacao(this.email);

  @override
  Widget build(BuildContext context) {
    String emailFormatado(String _email) {
      List<String> _split = _email.split('@');

      int tamanho = (_split[0].length / 2).round();
      String _cortado = _split[0].replaceRange(0, tamanho, '*' * tamanho);

      return _cortado + '@' + _split[1];
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      titlePadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      title: Row(
        children: [
          Expanded(child: Container()),
          Text(
            'Fechar',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
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
                'Link de recuperação enviado!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Foi enviado um link de recuperacao para o email abaixo. '
            'Siga os passos para recuperar sua senha.',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.lock),
                SizedBox(width: 10),
                Text(
                  emailFormatado(this.email),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
