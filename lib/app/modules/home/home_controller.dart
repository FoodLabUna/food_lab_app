import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:food_lab/app/stores/auth_store.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthStore? authStore = GetIt.I<AuthStore>();

  @action
  alterarPagina() {}
}
