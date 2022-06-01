import 'package:cloud_firestore/cloud_firestore.dart';

class HistoricoPesquisaModel {
  String? tipoPeixe;
  num? acuracidade;
  Timestamp? data;
  num? ranking;
  String? image;
  String? user_id;
  String? user_name;

  HistoricoPesquisaModel(
      {this.tipoPeixe,
      this.acuracidade,
      this.data,
      this.ranking,
      this.image,
      this.user_id,
      this.user_name});

  HistoricoPesquisaModel.fromJson(Map<String, dynamic> json) {
    tipoPeixe = json['tipo_peixe'];
    acuracidade = json['acuracidade'];
    data = json['data'];
    ranking = json['ranking'];
    image = json['image'];
    user_name = json['user_name'];
    user_id = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipo_peixe'] = this.tipoPeixe;
    data['acuracidade'] = this.acuracidade;
    data['data'] = FieldValue.serverTimestamp();
    data['ranking'] = this.ranking;
    data['image'] = this.image;
    data['user_id'] = this.user_id;
    data['user_name'] = this.user_name;
    return data;
  }
}
