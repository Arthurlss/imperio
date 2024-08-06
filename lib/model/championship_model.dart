class ChampionshipModel {
  dynamic name;
  dynamic image;

  ChampionshipModel({this.name, this.image});

  ChampionshipModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    return data;
  }
}
