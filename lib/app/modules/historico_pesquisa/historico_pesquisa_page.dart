import 'package:flutter/material.dart';
import 'package:food_lab/app/modules/historico_pesquisa/historico_pesquisa_controller.dart';
import 'package:food_lab/app/widgets/card_historico_pesquisa.dart';

class HistoricoPesquisaPage extends StatefulWidget {
  const HistoricoPesquisaPage({Key? key}) : super(key: key);

  @override
  State<HistoricoPesquisaPage> createState() => _HistoricoPesquisaPageState();
}

class _HistoricoPesquisaPageState extends State<HistoricoPesquisaPage> {
  final controller = HistoricoPesquisaController();
  @override
  Widget build(BuildContext context) {
    controller.populateList(5);
    return Container(
        child: Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children:
            controller.histPesq.map((e) => HistoricoPesquisaCard(e)).toList(),
      ),
    ));
  }
}
