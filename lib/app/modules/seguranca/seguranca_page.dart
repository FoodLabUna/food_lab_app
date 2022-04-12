import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_lab/app/widgets/base_app_bar.dart';
import 'package:food_lab/app/widgets/confirm_bottom_bar.dart';
import 'package:food_lab/app/widgets/main_text_field.dart';

class SegurancaPage extends StatefulWidget {
  @override
  _SegurancaPageState createState() => _SegurancaPageState();
}

class _SegurancaPageState extends State<SegurancaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Segurança',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text('Alterar senha'),
            SizedBox(height: 30),
            Text(
              'Senha',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            MainTextField(
              icon: Icons.lock,
              hint: 'Senha atual',
            ),
            SizedBox(height: 8),
            MainTextField(
              icon: Icons.lock,
              hint: 'Nova senha',
            ),
            SizedBox(height: 8),
            MainTextField(
              icon: Icons.lock,
              hint: 'Confirme a nova senha',
            ),
            // SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Formas de Pagamento',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 20,
            //       ),
            //     ),
            //     TextButton.icon(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.photo_camera,
            //         color: Colors.black,
            //       ),
            //       label: Text(
            //         'Novo',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //       style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(
            //           Colors.grey,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            // Text(
            //   'Cartões ativos:',
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: ConfirmBottomBar(
        loading: false,
        onSave: () {},
        onCancel: () {
          Get.back();
        },
      ),
    );
  }
}
