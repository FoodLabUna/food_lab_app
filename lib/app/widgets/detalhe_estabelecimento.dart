import 'package:flutter/material.dart';

class DetalheEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopHeaderBar(),
          Container(
            height: 125,
            color: Colors.green,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopHeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFB9B9B9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nome do Estabelecimento',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Fechar'),
                Icon(Icons.close),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
