import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? uid;
  String? email;
  String? nome;

  UserModel({this.id, this.uid, this.email, this.nome});

  UserModel.fromDocument(DocumentSnapshot document) {
    id = document.id;
    uid = document['id'] as String;
    nome = document['nome'] as String;
    email = document['email'] as String;
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    email = json['email'];
    nome = json['nome'];
  }

  Map<String, dynamic> toMap() {
    return {'id': uid, 'nome': nome, 'email': email};
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['email'] = this.email;
    data['nome'] = this.nome;
    return data;
  }
}
