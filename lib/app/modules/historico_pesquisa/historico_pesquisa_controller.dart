import 'package:food_lab/app/models/historico_pesquisa_model.dart';
import 'package:mobx/mobx.dart';
part 'historico_pesquisa_controller.g.dart';

class HistoricoPesquisaController = _HistoricoPesquisaControllerBase
    with _$HistoricoPesquisaController;

abstract class _HistoricoPesquisaControllerBase with Store {
  @observable
  List<HistoricoPesquisaModel> histPesq = [];

  @action
  populateList(num cont) {
    histPesq.clear();
    for (var i = 0; i < cont; i++) {
      HistoricoPesquisaModel model = HistoricoPesquisaModel();
      if (i % 2 == 0) {
        model.tipoPeixe = "Tilápia";
        model.acuracidade = 50.0 - i;
        model.data = "11/04/2022";
        model.image = "assets/images/tilapia.jpg";
        model.ranking = i + 1;
      } else {
        model.tipoPeixe = "Merluza";
        model.acuracidade = 80.0 + i;
        model.data = "11/04/2022";
        model.image = "assets/images/melusa.jpg";
        model.ranking = i + 1;
      }
      histPesq.add(model);
    }
  }
}
