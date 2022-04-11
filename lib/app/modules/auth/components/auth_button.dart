import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Function? onPressed;
  final String? label;
  final IconData? icon;

  const AuthButton({
    this.label,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return OutlineButton(
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
            SizedBox(
              width: 40,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              label ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      onPressed: onPressed as void Function()?,
    );
  }
}
