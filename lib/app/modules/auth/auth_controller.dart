// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:get/get.dart';
//import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @action
  logaGoogle() async {
    if ("ok" == 'ok') {
      Get.toNamed('/base');
    } else {
      //  mensagem = _result;
    }
  }
}
