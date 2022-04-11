import 'package:flutter/material.dart';

class PopupAlteracoesSalvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Icon(Icons.check),
              Text(
                'Alterações salvas!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 25),
              Text(
                'Suas configurações foram\nsalvas com sucesso!',
                style: TextStyle(),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
