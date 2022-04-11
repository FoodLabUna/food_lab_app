class HistoricoPesquisaModel {
  String? tipoPeixe;
  double? acuracidade;
  String? data;
  int? ranking;
  String? image;

  HistoricoPesquisaModel(
      {this.tipoPeixe, this.acuracidade, this.data, this.ranking, this.image});

  HistoricoPesquisaModel.fromJson(Map<String, dynamic> json) {
    tipoPeixe = json['tipo_peixe'];
    acuracidade = json['acuracidade'];
    data = json['data'];
    ranking = json['ranking'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipo_peixe'] = this.tipoPeixe;
    data['acuracidade'] = this.acuracidade;
    data['data'] = this.data;
    data['ranking'] = this.ranking;
    data['image'] = this.image;
    return data;
  }
}
