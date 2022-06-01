import 'package:food_lab/app/models/historico_pesquisa_model.dart';
import 'package:mobx/mobx.dart';
import 'package:get/get.dart';
import 'package:food_lab/app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_lab/app/helpers/firebase_erros.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final FirebaseAuth authFirebase = FirebaseAuth.instance;
  @observable
  ObservableList<HistoricoPesquisaModel> history =
      <HistoricoPesquisaModel>[].asObservable();

  Stream<QuerySnapshot>? listenHistory;

  init() async {
    if (FirebaseAuth.instance.currentUser != null) {
      await getUser();
    }
  }

  @observable
  UserModel? user;

  @computed
  bool get userLogged => FirebaseAuth.instance.currentUser != null;

  Future<bool> verificaCadastro(String uid) async {
    print("Verificando se possui cadastro");
    try {
      DocumentSnapshot _snap =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();

      if (_snap.exists) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      print('ERRO AUTENTICAÇÃO GOOGLE: $error');
      return false;
    }
  }

  @action
  void listenUser() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((event) async {
      user = UserModel.fromDocument(event);
    });
    getHistory(user?.id);
  }

  @action
  Future<String> fazerLogin(
      {required String email, required String senha}) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return 'ok';
    } on FirebaseAuthException catch (e) {
      return getErrorString(e.code);
    } on Exception catch (e) {
      //Outro problema
      return e.toString();
    }
  }

  @action
  Future<String> fazerUpdate(UserModel model) async {
    CollectionReference _store = FirebaseFirestore.instance.collection('users');

    try {
      await _store
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update(model.toMap());
      return 'ok';
    } catch (e) {
      return '$e';
    }
  }

  @action
  Future<String> fazerCadastro(
    String nome,
    String email,
    String senha,
  ) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);

      return 'ok';
    } on FirebaseAuthException catch (e) {
      String erro = getErrorString(e.code);
      print("Erro ao fazer o Cadastro: $erro");
      return erro;
    } on Exception catch (e) {
      //Outro problema
      return e.toString();
    }
  }

  @action
  Future<String> fazerGravacao(UserModel model) async {
    print("fazendo gravação");
    CollectionReference _store = FirebaseFirestore.instance.collection('users');
    model.uid = FirebaseAuth.instance.currentUser!.uid;
    try {
      await _store.doc(model.uid).set(model.toMap());
      return 'ok';
    } on FirebaseAuthException catch (e) {
      return getErrorString(e.code);
    } on Exception catch (e) {
      //Outro problema
      return e.toString();
    }
  }

  @action
  getUser() async {
    try {
      DocumentSnapshot docUser = await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      user = UserModel.fromDocument(docUser);
      listenUser();
    } catch (e) {
      print('ERRO: $e');
    }
  }

  @action
  atualizarUser(UserModel model) async {
    try {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update(model.toMap());

      // user = UserModel.fromDocument(docUser);

      listenUser();
    } catch (e) {
      print('ERRO: $e');
    }
  }

  @action
  savePredict(HistoricoPesquisaModel history, String peixe) async {
    history.user_id = user?.id;
    history.user_name = user?.nome;
    if (peixe != "TILÁPIA") {
      history.image = "merluza";
      history.ranking = 2;
    } else {
      history.image = "tilapia";
      history.ranking = 1;
    }
    try {
      await FirebaseFirestore.instance
          .collection("history")
          .add(history.toJson());
      listenUser();
    } catch (e) {
      print('ERRO: $e');
    }
  }

  @action
  getHistory(String? uid) async {
    listenHistory = FirebaseFirestore.instance
        .collection('history')
        .where(
          'user_id',
          isEqualTo: uid,
        )
        .snapshots();

    listenHistory!.listen((event) {
      this.history.clear();
      event.docs.forEach((element) {
        this.history.add(HistoricoPesquisaModel.fromJson(
            element.data() as Map<String, dynamic>));
      });
      List<HistoricoPesquisaModel> aux = history.toList();
      aux.sort((a, b) => b.data!.compareTo(a.data!));
      history = aux.toList().asObservable();
    });
  }

  fazerLogoff() async {
    await authFirebase.signOut();
    Get.offAllNamed('/auth');
  }
}
