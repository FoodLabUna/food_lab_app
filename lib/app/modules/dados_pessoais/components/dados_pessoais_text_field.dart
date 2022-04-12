import 'package:flutter/material.dart';

class DadosPessoaisTextField extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  final IconData? icon;
  final bool enabled;
  final String? hint;
  final Function? onTap;
  final String? dado;

  const DadosPessoaisTextField(
    this.title, {
    this.onChanged,
    this.icon,
    this.hint,
    this.enabled = true,
    this.onTap,
    this.dado,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 7.5),
        TextField(
          readOnly: onTap != null,
          onTap: onTap as void Function()?,
          enabled: enabled,
          onChanged: onChanged,
          cursorColor: Colors.black54,
          decoration: InputDecoration(
            labelText: dado,
            hintText: hint,
            isDense: true,
            fillColor: Colors.black12,
            filled: !enabled,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(color: Colors.black),
            ),
            prefixIcon: icon == null
                ? null
                : Icon(
                    icon ?? Icons.person,
                    color: Colors.black54,
                  ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}
