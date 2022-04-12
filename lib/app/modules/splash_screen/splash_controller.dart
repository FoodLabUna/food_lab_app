import 'package:mobx/mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:food_lab/app/stores/auth_store.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final AuthStore? authStore = GetIt.I<AuthStore>();

  @action
  init() async {
    await Future.delayed(const Duration(seconds: 2));

    await authStore!.init();

    if (authStore!.userLogged) {
      Get.toNamed('/base');
    } else {
      Get.toNamed('/auth');
    }
  }
}
