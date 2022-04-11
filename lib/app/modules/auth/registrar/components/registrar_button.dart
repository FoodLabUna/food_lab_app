import 'package:flutter/material.dart';

class RegistrarButton extends StatelessWidget {
  final bool? isLoading;
  final Function? onTap;

  const RegistrarButton({
    this.isLoading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 45,
        width: 160,
        // ignore: deprecated_member_use
        child: RaisedButton(
          elevation: 0,
          highlightElevation: 0,
          splashColor: Colors.white,
          highlightColor: Color(0xFFf28705),
          color: Color(0xFFf28705),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: isLoading!
              ? CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Colors.white,
                  ),
                )
              : Text(
                  "Cadastrar",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
          onPressed: this.isLoading! ? null : this.onTap as void Function()?,
        ),
      ),
    );
  }
}
