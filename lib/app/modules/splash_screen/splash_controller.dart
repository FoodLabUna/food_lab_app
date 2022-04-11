import 'package:mobx/mobx.dart';
import 'package:get/get.dart';
//import 'package:get_it/get_it.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  @action
  init() async {
    await Future.delayed(const Duration(seconds: 5));

    if (1 == 1) {
      Get.toNamed('/base');
    } else {
      Get.toNamed('/auth');
    }
  }
}
