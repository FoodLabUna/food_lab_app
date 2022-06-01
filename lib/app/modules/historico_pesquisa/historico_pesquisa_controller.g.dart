// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historico_pesquisa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoricoPesquisaController on _HistoricoPesquisaControllerBase, Store {
  final _$histPesqAtom =
      Atom(name: '_HistoricoPesquisaControllerBase.histPesq');

  @override
  ObservableList<HistoricoPesquisaModel> get histPesq {
    _$histPesqAtom.reportRead();
    return super.histPesq;
  }

  @override
  set histPesq(ObservableList<HistoricoPesquisaModel> value) {
    _$histPesqAtom.reportWrite(value, super.histPesq, () {
      super.histPesq = value;
    });
  }

  @override
  String toString() {
    return '''
histPesq: ${histPesq}
    ''';
  }
}
