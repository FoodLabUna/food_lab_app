// ignore_for_file: import_of_legacy_library_into_null_safe, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_lab/app/models/historico_pesquisa_model.dart';

const double _leftPadding = 30;

class HistoricoPesquisaCard extends StatefulWidget {
  final HistoricoPesquisaModel pedido;

  HistoricoPesquisaCard(this.pedido);

  @override
  _HistoricoPesquisaCardState createState() => _HistoricoPesquisaCardState();
}

class _HistoricoPesquisaCardState extends State<HistoricoPesquisaCard> {
  Size? _tamanhoDoCard = Size.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _tamanhoDoCard = context.size;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Color? colorForStatus(double acuracidade) {
      if (acuracidade >= 50.0) {
        return Colors.green[800];
      } else {
        return Colors.red;
      }
    }

    String textStatus(double acuracidade) {
      if (acuracidade >= 50.0) {
        return "PRECISÃO BOA";
      } else {
        return "PRECISÃO RUIM";
      }
    }

    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0XFFE8E8E8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFE8E8E8),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  //color: Color(0XFF20D071),
                  color: colorForStatus(
                    widget.pedido.acuracidade!,
                  ),
                ),
                height: _tamanhoDoCard!.height == 0
                    ? 0
                    : _tamanhoDoCard!.height - 20,
                width: 15,
                child: RotatedBox(
                    quarterTurns: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        textStatus(
                          widget.pedido.acuracidade!,
                        ),
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: _leftPadding,
                        right: 15,
                        top: 15,
                        bottom: 5,
                      ),
                      child: _Cabecalho(widget.pedido),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: _leftPadding,
                        right: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: _leftPadding,
                        right: 15,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Porcentagem de precisão : ${widget.pedido.acuracidade}%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // _Barra(widget.pedido),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Cabecalho extends StatelessWidget {
  final HistoricoPesquisaModel pedido;
  _Cabecalho(this.pedido);

  String getData() {
    return pedido.data!;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${pedido.tipoPeixe}',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                'Ranking Peixe: ${pedido.ranking}º',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Data: ${getData()}')),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: 50,
          height: 70,
          child: Container(
            height: double.infinity,
            alignment: Alignment.center, // This is needed
            child: Image.asset(
              pedido.image!,
              fit: BoxFit.cover,
              width: 300,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: unused_element
class _Barra extends StatelessWidget {
  final HistoricoPesquisaModel pedido;

  _Barra(this.pedido);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFC4C4C4),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      width: double.infinity,
      height: 35,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
