// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_pessoais_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosPessoaisController on _DadosPessoaisControllerBase, Store {
  final _$valueAtom = Atom(name: '_DadosPessoaisControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_DadosPessoaisControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$mensagemAtom = Atom(name: '_DadosPessoaisControllerBase.mensagem');

  @override
  String get mensagem {
    _$mensagemAtom.reportRead();
    return super.mensagem;
  }

  @override
  set mensagem(String value) {
    _$mensagemAtom.reportWrite(value, super.mensagem, () {
      super.mensagem = value;
    });
  }

  final _$nomeAtom = Atom(name: '_DadosPessoaisControllerBase.nome');

  @override
  String? get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String? value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_DadosPessoaisControllerBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$emaiAtom = Atom(name: '_DadosPessoaisControllerBase.emai');

  @override
  String? get emai {
    _$emaiAtom.reportRead();
    return super.emai;
  }

  @override
  set emai(String? value) {
    _$emaiAtom.reportWrite(value, super.emai, () {
      super.emai = value;
    });
  }

  final _$fazerUpdateAsyncAction =
      AsyncAction('_DadosPessoaisControllerBase.fazerUpdate');

  @override
  Future fazerUpdate() {
    return _$fazerUpdateAsyncAction.run(() => super.fazerUpdate());
  }

  final _$_DadosPessoaisControllerBaseActionController =
      ActionController(name: '_DadosPessoaisControllerBase');

  @override
  dynamic toggleLoading() {
    final _$actionInfo = _$_DadosPessoaisControllerBaseActionController
        .startAction(name: '_DadosPessoaisControllerBase.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$_DadosPessoaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNome(String? value) {
    final _$actionInfo = _$_DadosPessoaisControllerBaseActionController
        .startAction(name: '_DadosPessoaisControllerBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_DadosPessoaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String? value) {
    final _$actionInfo = _$_DadosPessoaisControllerBaseActionController
        .startAction(name: '_DadosPessoaisControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_DadosPessoaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$_DadosPessoaisControllerBaseActionController
        .startAction(name: '_DadosPessoaisControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DadosPessoaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
isLoading: ${isLoading},
mensagem: ${mensagem},
nome: ${nome},
email: ${email},
emai: ${emai}
    ''';
  }
}
