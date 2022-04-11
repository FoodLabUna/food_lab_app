// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

//import 'package:paysae_provider/app/models/user_model.dart';
import 'package:food_lab/app/stores/auth_store.dart';

part 'registrar_controller.g.dart';

class RegistrarController = _RegistrarControllerBase with _$RegistrarController;

abstract class _RegistrarControllerBase with Store {
  final AuthStore? auth = GetIt.I<AuthStore>();

  @observable
  bool isLoading = false;
  @action
  toggleLoading() => isLoading = !isLoading;
  @observable
  String mensagem = '';
  @observable
  bool erroCadastro = false;

  @observable
  String nome = '';
  @observable
  String? dataNasc;
  @observable
  String email = '';
  @observable
  String senha = '';
  @observable
  String confSenha = '';

  @action
  setErroCadastro(bool value) => erroCadastro = value;
  @action
  setNome(String value) => nome = value;
  @action
  setDataNasc(String value) => dataNasc = value;
  @action
  setEmail(String value) => email = value;
  @action
  setSenha(String value) => senha = value;
  @action
  setConfSenha(String value) => confSenha = value;

  @computed
  bool get isRegisterValid {
    if ((nome.length > 4) &&
        EmailValidator.validate(email) &&
        (senha.length > 5) &&
        (senha == confSenha)) {
      return true;
    }
    return false;
  }

  @action
  Future<bool> validFields() async {
    bool valido = false;
    if (nome.length > 4) {
      valido = true;
    } else {
      mensagem = 'Nome precisa ter mais de 4 caracteres';
      setErroCadastro(true);
      return false;
    }
    if (EmailValidator.validate(email)) {
      valido = true;
    } else {
      mensagem = 'Seu email é inválido';
      setErroCadastro(true);
      return false;
    }
    if (senha.length > 5) {
      valido = true;
    } else {
      mensagem = 'Senha precisa ser maior que 5 caracteres';
      setErroCadastro(true);
      return false;
    }
    if (senha == confSenha) {
      valido = true;
    } else {
      mensagem = 'Senhas não coincidem';
      setErroCadastro(true);
      return false;
    }

    return valido;
  }

  @action
  fazerRegistro() async {
    toggleLoading();
    bool valido = await validFields();

    if (valido) {
      String _result = '', _resultGravacao = '';

      /*    UserModel model = UserModel(
        email: this.email,
        nascimento: this.dataNasc,
        nome: this.nome,
        password: this.senha,
        instagram: 'Vazio',
        telefone: 'Vazio',
        status: '-1',
        splitActive: false,
        splitID: 'vazio',
        splitNomeEstab: 'vazio',
        splitPreco: 0,
        statusSplit: 0,
        raio: 1,
      ); */

      if (isRegisterValid) {
        _result =
            "ok"; //await auth!.fazerCadastro(this.nome, dataNasc, email, senha);
        if (_result == 'ok') {
          //_resultGravacao = await auth!.fazerGravacao(model);
        } else {
          mensagem = _result;
          erroCadastro = true;
        }
      }
      if (_result == 'ok' && _resultGravacao == 'ok') {
        // await auth.getFirebaseuser();
        //await auth!.getUser();
        Get.toNamed('/base');
        erroCadastro = false;
      } else {
        mensagem = _result + _resultGravacao;
      }
    }

    toggleLoading();
  }
}
