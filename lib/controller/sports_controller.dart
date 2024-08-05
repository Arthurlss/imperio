import 'package:dio/dio.dart';

class SportsController {
  Future<dynamic> getSports(context) async {
    try {
      var response =
          await Dio().get("https://6569cc7dde53105b0dd7af5c.mockapi.io/sports");
      print('object');
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getChampionships(context) async {
    try {
      var sports =
          await Dio().get("https://6569cc7dde53105b0dd7af5c.mockapi.io/sports");
      var championships = await Dio()
          .get("https://6569cc7dde53105b0dd7af5c.mockapi.io/championships");
      var matches = await Dio()
          .get("https://6569cc7dde53105b0dd7af5c.mockapi.io/matches");
      var bonus =
          await Dio().get("https://6569cc7dde53105b0dd7af5c.mockapi.io/bonus");
      var won_bets = await Dio()
          .get("https://6569cc7dde53105b0dd7af5c.mockapi.io/won_bets");
      var tips =
          await Dio().get("https://6569cc7dde53105b0dd7af5c.mockapi.io/tips");
      /*  var response5 = await Dio()
          .get("https://6569cc7dde53105b0dd7af5c.mockapi.io/championships"); */
      print('object');
    } catch (e) {
      print(e.toString());
    }
  }
}
