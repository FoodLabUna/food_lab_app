import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'package:food_lab/app/stores/auth_store.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthStore? auth = GetIt.I<AuthStore>();

  @observable
  bool isLoading = false;
  @action
  toggleLoading() => isLoading = !isLoading;
  @observable
  String mensagem = '';
  @observable
  bool erro = false;
  @observable
  String email = '';
  @observable
  String senha = '';

  @action
  setErro(bool value) => erro = value;
  @action
  setEmail(String value) => email = value.trim();
  @action
  setSenha(String value) => senha = value.trim();

  @computed
  bool get isLoginValid => EmailValidator.validate(email) && senha.length > 5;

  @action
  fazerLogin() async {
    print('Fazendo login: $email - $senha');

    String _result = 'erro';

    toggleLoading();
    if (isLoginValid) {
      print("EMAIL VALIDO");
      _result = await auth!.fazerLogin(email: email, senha: senha);
    }
    print('RESULTADO: $_result');
    if (_result == 'ok') {
      erro = false;
      await auth!.init();
      Get.toNamed('/base');
    } else {
      mensagem = _result;
      erro = true;
    }
    toggleLoading();
  }
}
