class TipModel {
  dynamic image;
  dynamic title;
  dynamic description;

  TipModel({this.description, this.image, this.title});

  TipModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}
