import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTextField extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final bool obscureText;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? formatters;

  const MainTextField({
    this.hint,
    this.icon,
    this.obscureText = false,
    this.onChanged,
    this.formatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: formatters,
      onChanged: this.onChanged,
      enabled: true,
      obscureText: obscureText,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
        hintText: hint ?? '',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
        prefixIcon: Padding(
          child: IconTheme(
            data: IconThemeData(color: Colors.blueAccent),
            child: Icon(
              icon ?? Icons.android,
              color: Colors.black,
            ),
          ),
          padding: EdgeInsets.only(left: 30, right: 10),
        ),
      ),
    );
  }
}
