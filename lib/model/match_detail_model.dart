class MatchDetailModel {
  dynamic date;
  dynamic team_a;
  dynamic team_b;
  dynamic team_a_score;
  dynamic team_b_score;
  dynamic xbet_odds_avg;
  dynamic betsafe_odd_avg;
  dynamic betsson_odd_avg;
  dynamic likes_count;
  dynamic stars_count;
  dynamic views_count;
  dynamic shares_count;
  dynamic channels;
  dynamic stadium;
  dynamic referee;
  dynamic referee_avatar;
  dynamic referee_stats;
  dynamic team_a_image;
  dynamic team_b_image;
  dynamic red_card_media;
  dynamic yellow_card_media;
  dynamic team_a_stats;
  dynamic team_b_stats;

  MatchDetailModel({
    this.betsafe_odd_avg,
    this.betsson_odd_avg,
    this.channels,
    this.date,
    this.likes_count,
    this.red_card_media,
    this.referee,
    this.referee_avatar,
    this.referee_stats,
    this.shares_count,
    this.stadium,
    this.stars_count,
    this.team_a,
    this.team_a_image,
    this.team_a_score,
    this.team_a_stats,
    this.team_b,
    this.team_b_image,
    this.team_b_score,
    this.team_b_stats,
    this.views_count,
    this.xbet_odds_avg,
    this.yellow_card_media,
  });

  MatchDetailModel.fromJson(Map<String, dynamic> json) {
    betsafe_odd_avg = json['betsafe_odd_avg'];
    betsson_odd_avg = json['betsson_odd_avg'];
    channels = json['channels'];
    date = json['date'];
    likes_count = json['likes_count'];
    red_card_media = json['red_card_media'];
    referee = json['referee'];
    referee_avatar = json['referee_avatar'];
    referee_stats = json['referee_stats'];
    shares_count = json['shares_count'];
    team_a_score = json['team_a_score'];
    team_a_stats = json['team_a_stats'];
    team_b = json['team_b'];
    team_b_image = json['team_b_image'];
    team_b_score = json['team_b_score'];
    team_b_stats = json['team_b_stats'];
    views_count = json['views_count'];
    xbet_odds_avg = json['xbet_odds_avg'];
    yellow_card_media = json['yellow_card_media'];
    stars_count = json['stars_count'];
    team_a = json['team_a'];
    team_a_image = json['team_a_image'];
    stadium = json['stadium'];
  }
}
