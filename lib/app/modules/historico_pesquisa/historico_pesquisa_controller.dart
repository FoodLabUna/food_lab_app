import 'package:food_lab/app/models/historico_pesquisa_model.dart';
import 'package:food_lab/app/stores/auth_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'historico_pesquisa_controller.g.dart';

class HistoricoPesquisaController = _HistoricoPesquisaControllerBase
    with _$HistoricoPesquisaController;

abstract class _HistoricoPesquisaControllerBase with Store {
  @observable
  ObservableList<HistoricoPesquisaModel> histPesq =
      GetIt.I<AuthStore>().history;
}
