class WonBetModel {
  dynamic user_avatar;
  dynamic user;
  dynamic platform;
  dynamic score;

  WonBetModel({this.platform, this.score, this.user, this.user_avatar});

  WonBetModel.fromJson(Map<String, dynamic> json) {
    user_avatar = json['user_avatar'];
    user = json['user'];
    platform = json['platform'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_avatar'] = this.user_avatar;
    data['user'] = this.user;
    data['platform'] = this.platform;
    data['score'] = this.score;
    return data;
  }
}
