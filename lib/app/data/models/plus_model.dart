class Plus {
  int? id;
  String? desc;
  String? subdesc;

  Plus({this.id, this.desc, this.subdesc});

  Plus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
    subdesc = json['subdesc'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['desc'] = desc;
    data['subdesc'] = subdesc;
    return data;
  }
}
