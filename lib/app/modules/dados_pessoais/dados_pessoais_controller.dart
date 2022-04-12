// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'package:food_lab/app/models/user_model.dart';
import 'package:food_lab/app/stores/auth_store.dart';

part 'dados_pessoais_controller.g.dart';

class DadosPessoaisController = _DadosPessoaisControllerBase
    with _$DadosPessoaisController;

abstract class _DadosPessoaisControllerBase with Store {
  final AuthStore? auth = GetIt.I<AuthStore>();

  @observable
  int value = 0;
  @observable
  bool isLoading = false;
  @action
  toggleLoading() => isLoading = !isLoading;
  @observable
  String mensagem = '';

  @observable
  String? nome = '';
  @observable
  String? email = '';
  @observable
  String? emai = '';

  @action
  setNome(String? value) => nome = value;
  @action
  setEmail(String? value) => email = value;

  @action
  fazerUpdate() async {
    String _result = '';

    toggleLoading();
    UserModel model = UserModel(
      email: this.email,
      nome: this.nome,
    );
    _result = await auth!.fazerUpdate(model);

    if (_result == 'ok') {
      await auth!.getUser();
      Get.toNamed('/base');
    } else {
      mensagem = _result;
    }
    toggleLoading();
  }

  @action
  void increment() {
    value++;
  }
}
