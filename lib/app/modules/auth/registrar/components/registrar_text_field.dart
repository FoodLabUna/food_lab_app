import 'package:flutter/material.dart';

class RegistrarTextField extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final bool obscureText;
  final bool readOnly;
  final Function? onTap;
  final Function(String)? onChanged;
  final Function(String)? validator;

  RegistrarTextField({
    this.hint,
    this.icon,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 3,
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: TextFormField(
          readOnly: this.readOnly,
          onTap: this.onTap as void Function()?,
          validator: this.validator as String? Function(String?)?,
          onChanged: this.onChanged,
          obscureText: this.obscureText,
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
              padding: EdgeInsets.only(
                left: 30,
                right: 10,
              ),
              child: IconTheme(
                data: IconThemeData(color: Colors.black),
                child: Icon(
                  icon ?? Icons.android,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
