class Men {
  int? id;
  String? name;
  String? img;

  Men({this.id, this.name, this.img});

  Men.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    return data;
  }
}
