class ValidateFish {
  String? accuracy;
  String? type;

  ValidateFish({this.accuracy, this.type});

  ValidateFish.fromJson(Map<String, dynamic> json) {
    accuracy = json['accuracy'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accuracy'] = this.accuracy;
    data['type'] = this.type;
    return data;
  }
}
