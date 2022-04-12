import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:food_lab/app/modules/dados_pessoais/components/alterar_foto.dart';
import 'package:food_lab/app/modules/dados_pessoais/components/dados_pessoais_text_field.dart';
import 'package:food_lab/app/stores/auth_store.dart';
import 'package:food_lab/app/util/hide_scroll_glow.dart';
import 'package:food_lab/app/widgets/confirm_bottom_bar.dart';
import 'dados_pessoais_controller.dart';

class DadosPessoaisPage extends StatefulWidget {
  @override
  _DadosPessoaisPageState createState() => _DadosPessoaisPageState();
}

class _DadosPessoaisPageState extends State<DadosPessoaisPage> {
  final controller = DadosPessoaisController();
  final AuthStore? authStore = GetIt.I<AuthStore>();

  @override
  void initState() {
    controller.setEmail(authStore!.user!.email);
    controller.setNome(authStore!.user!.nome);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFf28705)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: ScrollConfiguration(
          behavior: HideScrollGlow(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Dados pessoais',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Nome, e-mail, foto',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                DadosPessoaisAlterarFoto(
                  FirebaseAuth.instance.currentUser!.photoURL,
                  () {
                    print('A');
                  },
                ),
                SizedBox(height: 5),
                // Text(
                //   'Nome Completo',
                //   style: TextStyle(
                //     fontSize: 15,
                //   ),
                // ),
                DadosPessoaisTextField(
                  'Nome Completo',
                  icon: Icons.person,
                  dado: authStore!.user!.nome,
                  onChanged: (texto) {
                    controller.setNome(texto);
                  },
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: DadosPessoaisTextField('E-mail',
                          icon: Icons.mail,
                          enabled: false,
                          hint: authStore!.user!.email,
                          dado: authStore!.user!.email),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ConfirmBottomBar(
        loading: false,
        onSave: () {
          controller.fazerUpdate();
        },
        onCancel: () {
          Get.back();
        },
      ),
    );
  }
}
