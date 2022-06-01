// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  Computed<bool>? _$userLoggedComputed;

  @override
  bool get userLogged =>
      (_$userLoggedComputed ??= Computed<bool>(() => super.userLogged,
              name: '_AuthStoreBase.userLogged'))
          .value;

  final _$historyAtom = Atom(name: '_AuthStoreBase.history');

  @override
  ObservableList<HistoricoPesquisaModel> get history {
    _$historyAtom.reportRead();
    return super.history;
  }

  @override
  set history(ObservableList<HistoricoPesquisaModel> value) {
    _$historyAtom.reportWrite(value, super.history, () {
      super.history = value;
    });
  }

  final _$userAtom = Atom(name: '_AuthStoreBase.user');

  @override
  UserModel? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$fazerLoginAsyncAction = AsyncAction('_AuthStoreBase.fazerLogin');

  @override
  Future<String> fazerLogin({required String email, required String senha}) {
    return _$fazerLoginAsyncAction
        .run(() => super.fazerLogin(email: email, senha: senha));
  }

  final _$fazerUpdateAsyncAction = AsyncAction('_AuthStoreBase.fazerUpdate');

  @override
  Future<String> fazerUpdate(UserModel model) {
    return _$fazerUpdateAsyncAction.run(() => super.fazerUpdate(model));
  }

  final _$fazerCadastroAsyncAction =
      AsyncAction('_AuthStoreBase.fazerCadastro');

  @override
  Future<String> fazerCadastro(String nome, String email, String senha) {
    return _$fazerCadastroAsyncAction
        .run(() => super.fazerCadastro(nome, email, senha));
  }

  final _$fazerGravacaoAsyncAction =
      AsyncAction('_AuthStoreBase.fazerGravacao');

  @override
  Future<String> fazerGravacao(UserModel model) {
    return _$fazerGravacaoAsyncAction.run(() => super.fazerGravacao(model));
  }

  final _$getUserAsyncAction = AsyncAction('_AuthStoreBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$atualizarUserAsyncAction =
      AsyncAction('_AuthStoreBase.atualizarUser');

  @override
  Future atualizarUser(UserModel model) {
    return _$atualizarUserAsyncAction.run(() => super.atualizarUser(model));
  }

  final _$savePredictAsyncAction = AsyncAction('_AuthStoreBase.savePredict');

  @override
  Future savePredict(HistoricoPesquisaModel history, String peixe) {
    return _$savePredictAsyncAction
        .run(() => super.savePredict(history, peixe));
  }

  final _$getHistoryAsyncAction = AsyncAction('_AuthStoreBase.getHistory');

  @override
  Future getHistory(String? uid) {
    return _$getHistoryAsyncAction.run(() => super.getHistory(uid));
  }

  final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase');

  @override
  void listenUser() {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.listenUser');
    try {
      return super.listenUser();
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
history: ${history},
user: ${user},
userLogged: ${userLogged}
    ''';
  }
}
