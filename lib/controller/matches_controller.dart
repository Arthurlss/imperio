import 'package:dio/dio.dart';
import 'package:imperio/constants/constants.dart';

class MatchesController {
  Future<dynamic> getMatches(context) async {
    try {
      var response = await Dio().get(BASE_URL + "/matches");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getBetsFromMatch(context, id) async {
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/bets");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getOddsFromMatch(context, id) async {
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/odds");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getLastMatches(context, id) async {
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/last_matches");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getMatchDetail(context, id) async {
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id");
    } catch (e) {
      print(e.toString());
    }
  }
}
