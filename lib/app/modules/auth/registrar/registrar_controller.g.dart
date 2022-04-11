// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrarController on _RegistrarControllerBase, Store {
  Computed<bool>? _$isRegisterValidComputed;

  @override
  bool get isRegisterValid =>
      (_$isRegisterValidComputed ??= Computed<bool>(() => super.isRegisterValid,
              name: '_RegistrarControllerBase.isRegisterValid'))
          .value;

  final _$isLoadingAtom = Atom(name: '_RegistrarControllerBase.isLoading');

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

  final _$mensagemAtom = Atom(name: '_RegistrarControllerBase.mensagem');

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

  final _$erroCadastroAtom =
      Atom(name: '_RegistrarControllerBase.erroCadastro');

  @override
  bool get erroCadastro {
    _$erroCadastroAtom.reportRead();
    return super.erroCadastro;
  }

  @override
  set erroCadastro(bool value) {
    _$erroCadastroAtom.reportWrite(value, super.erroCadastro, () {
      super.erroCadastro = value;
    });
  }

  final _$nomeAtom = Atom(name: '_RegistrarControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$dataNascAtom = Atom(name: '_RegistrarControllerBase.dataNasc');

  @override
  String? get dataNasc {
    _$dataNascAtom.reportRead();
    return super.dataNasc;
  }

  @override
  set dataNasc(String? value) {
    _$dataNascAtom.reportWrite(value, super.dataNasc, () {
      super.dataNasc = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegistrarControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_RegistrarControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$confSenhaAtom = Atom(name: '_RegistrarControllerBase.confSenha');

  @override
  String get confSenha {
    _$confSenhaAtom.reportRead();
    return super.confSenha;
  }

  @override
  set confSenha(String value) {
    _$confSenhaAtom.reportWrite(value, super.confSenha, () {
      super.confSenha = value;
    });
  }

  final _$validFieldsAsyncAction =
      AsyncAction('_RegistrarControllerBase.validFields');

  @override
  Future<bool> validFields() {
    return _$validFieldsAsyncAction.run(() => super.validFields());
  }

  final _$fazerRegistroAsyncAction =
      AsyncAction('_RegistrarControllerBase.fazerRegistro');

  @override
  Future fazerRegistro() {
    return _$fazerRegistroAsyncAction.run(() => super.fazerRegistro());
  }

  final _$_RegistrarControllerBaseActionController =
      ActionController(name: '_RegistrarControllerBase');

  @override
  dynamic toggleLoading() {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroCadastro(bool value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setErroCadastro');
    try {
      return super.setErroCadastro(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNome(String value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDataNasc(String value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setDataNasc');
    try {
      return super.setDataNasc(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfSenha(String value) {
    final _$actionInfo = _$_RegistrarControllerBaseActionController.startAction(
        name: '_RegistrarControllerBase.setConfSenha');
    try {
      return super.setConfSenha(value);
    } finally {
      _$_RegistrarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
mensagem: ${mensagem},
erroCadastro: ${erroCadastro},
nome: ${nome},
dataNasc: ${dataNasc},
email: ${email},
senha: ${senha},
confSenha: ${confSenha},
isRegisterValid: ${isRegisterValid}
    ''';
  }
}
