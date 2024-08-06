import 'package:dio/dio.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/model/bet_model.dart';
import 'package:imperio/model/last_match_model.dart';
import 'package:imperio/model/match_detail_model.dart';
import 'package:imperio/model/match_model.dart';
import 'package:imperio/model/odd_match_model.dart';

class MatchesController {
  Future<dynamic> getMatches(context) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/matches");
      _sportsProvider.resetListMatches();
      for (var item in response.data) {
        _sportsProvider.addItemListMatches(MatchModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getBetsFromMatch(context, id) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/bets");
      _sportsProvider.resetListBetsFromMatch();
      for (var item in response.data) {
        _sportsProvider.addItemListBestFromMatch(BetModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getOddsFromMatch(context, id) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/odds");
      _sportsProvider.resetListOdds();
      for (var item in response.data) {
        _sportsProvider.addItemListOdds(OddMatchModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getLastMatches(context, id) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id/last_matches");
      _sportsProvider.resetListLastMatch();
      for (var item in response.data) {
        _sportsProvider.addItemListLastMatch(LastMatchModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getMatchDetail(context, id) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/matches/$id");
      _sportsProvider.resetMatchDetail();
      _sportsProvider.setMatchDetail(MatchDetailModel.fromJson(response.data));
    } catch (e) {
      print(e.toString());
    }
  }
}
