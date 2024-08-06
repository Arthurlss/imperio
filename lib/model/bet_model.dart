class BetModel {
  dynamic name;
  dynamic date;
  dynamic avatar;
  dynamic bet_score;
  dynamic stat;

  BetModel({this.avatar, this.bet_score, this.date, this.name, this.stat});

  BetModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    avatar = json['avatar'];
    bet_score = json['bet_score'];
    stat = json['stat'];
  }
}
