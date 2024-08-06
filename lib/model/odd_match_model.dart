class OddMatchModel {
  dynamic date;
  dynamic team_a_1xbet_odd;
  dynamic team_a_betsafe_odd;
  dynamic team_a_betsson_odd;
  dynamic team_b_1xbet_odd;
  dynamic team_b_betsafe_odd;
  dynamic team_b_betsson_odd;
  dynamic draw_1xbet_odd;
  dynamic draw_betsafe_odd;
  dynamic draw_betsson_odd;

  OddMatchModel({
    this.date,
    this.draw_1xbet_odd,
    this.draw_betsafe_odd,
    this.draw_betsson_odd,
    this.team_a_1xbet_odd,
    this.team_a_betsafe_odd,
    this.team_a_betsson_odd,
    this.team_b_1xbet_odd,
    this.team_b_betsafe_odd,
    this.team_b_betsson_odd,
  });

  OddMatchModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    draw_1xbet_odd = json['draw_1xbet_odd'];
    draw_betsafe_odd = json['draw_betsafe_odd'];
    draw_betsson_odd = json['draw_betsson_odd'];
    team_a_1xbet_odd = json['team_a_1xbet_odd'];
    team_a_betsafe_odd = json['team_a_betsafe_odd'];
    team_a_betsson_odd = json['team_a_betsson_odd'];
    team_b_1xbet_odd = json['team_b_1xbet_odd'];
    team_b_betsafe_odd = json['team_b_betsafe_odd'];
    team_b_betsson_odd = json['team_b_betsson_odd'];
  }
}
