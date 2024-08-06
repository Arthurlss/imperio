class LastMatchModel {
  dynamic date;
  dynamic team_a_won;
  dynamic team_b_won;
  dynamic draw;
  dynamic championship_name;
  dynamic championship_image;

  LastMatchModel(
      {this.championship_image,
      this.championship_name,
      this.date,
      this.draw,
      this.team_a_won,
      this.team_b_won});

  LastMatchModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    team_a_won = json['team_a_won'];
    team_b_won = json['team_b_won'];
    draw = json['draw'];
    championship_name = json['championship_name'];
    championship_image = json['championshio_image'];
  }
}
