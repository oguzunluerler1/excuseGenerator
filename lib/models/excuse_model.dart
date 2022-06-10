class Excuse {
  int? id;
  String? excuse;
  String? category;

  Excuse({this.id, this.excuse, this.category});

  Excuse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    excuse = json['excuse'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['excuse'] = this.excuse;
    data['category'] = this.category;
    return data;
  }
}