class MatchModel {
  dynamic team_a;
  dynamic team_b;
  dynamic team_a_score;
  dynamic team_b_score;
  dynamic team_a_image;
  dynamic team_b_image;
  dynamic team_a_stats;
  dynamic team_b_stats;
  dynamic xbet_odds_avg;
  dynamic betsafe_odds_avg;
  dynamic betsson_odds_avg;
  dynamic stadium;
  dynamic referee;
  dynamic red_card_media;
  dynamic yellow_card_media;
  dynamic id;

  MatchModel(
      {this.team_a,
      this.team_b,
      this.team_a_image,
      this.team_b_image,
      this.team_a_stats,
      this.team_b_stats,
      this.team_a_score,
      this.team_b_score,
      this.betsafe_odds_avg,
      this.betsson_odds_avg,
      this.xbet_odds_avg,
      this.red_card_media,
      this.referee,
      this.stadium,
      this.yellow_card_media,
      this.id});

  MatchModel.fromJson(Map<String, dynamic> json) {
    team_a = json['team_a'];
    team_b = json['team_b'];
    id = json['id'];
    team_a_image = json['team_a_image'];
    team_b_image = json['team_b_image'];
    team_a_score = json['team_a_score'];
    team_b_score = json['team_b_score'];
    team_a_stats = json['team_a_stats'];
    team_b_stats = json['team_b_stats'];
    betsafe_odds_avg = json['betsafe_odds_avg'];
    betsson_odds_avg = json['betsson_odds_avg'];
    xbet_odds_avg = json['1xbet_odds_avg'];
    red_card_media = json['red_card_media'];
    referee = json['referee'];
    yellow_card_media = json['yellow_card_media'];
  }
}
