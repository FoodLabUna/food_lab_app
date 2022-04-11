import 'package:flutter/material.dart';

class ConfirmBottomBar extends StatelessWidget {
  final Function? onCancel;
  final Function? onSave;
  final bool loading;

  const ConfirmBottomBar({this.onCancel, this.onSave, required this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Expanded(child: Container()),
          ConfirmButton(
            label: 'Cancelar',
            onTap: onCancel,
            loading: false,
          ),
          ConfirmButton(
            label: 'Salvar',
            onTap: onSave,
            isPrimary: true,
            loading: loading,
          ),
        ],
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final bool? isPrimary;
  final bool loading;

  const ConfirmButton(
      {this.onTap, this.label, this.isPrimary, required this.loading});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      child: loading
          ? SizedBox(
              child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black)),
              height: 25.0,
              width: 25.0,
            )
          : Text(label ?? ''),
      onPressed: loading ? null : onTap as void Function()?,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: isPrimary ?? false ? Colors.black12 : Colors.transparent,
    );
  }
}
