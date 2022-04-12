import 'package:flutter/material.dart';

class DadosPessoaisButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? backgroundColor;

  const DadosPessoaisButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: onPressed as void Function()?,
      child: Text(label),
      color: backgroundColor ?? Colors.transparent,
    );
  }
}
