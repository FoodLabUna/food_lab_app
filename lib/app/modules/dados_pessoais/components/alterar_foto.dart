// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DadosPessoaisAlterarFoto extends StatelessWidget {
  final String? picture;
  final Function onChangePressed;

  const DadosPessoaisAlterarFoto(this.picture, this.onChangePressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 135,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Color(0xFFf28705),
              radius: 100,
              child: ClipOval(
                child: picture == null
                    ? Icon(Icons.person, size: 100, color: Colors.white)
                    : Image(
                        width: 135,
                        height: 135,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        image: NetworkImage(picture!),
                      ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () => onChangePressed(),
              child: Container(
                width: 135,
                alignment: Alignment.bottomRight,
                child: Icon(Icons.camera_enhance),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
