import 'package:dio/dio.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/model/tip_model.dart';
import 'package:imperio/model/won_bet_model.dart';

class BetsController {
  //Endpoint responsável por buscar as ofertas bonus
  Future<dynamic> getOffersBonus(context) async {
    try {
      var response = await Dio().get(BASE_URL + "/bonus");
    } catch (e) {
      print(e.toString());
    }
  }

//Endpoint responsável por buscar as apostas vencidas
  Future<dynamic> getWonBets(context) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/won_bets");
      _sportsProvider.resetListWonBets();
      for (var item in response.data) {
        _sportsProvider.addItemListWonBets(WonBetModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

//Endpoint responsável por buscar as dicas de apostas
  Future<dynamic> getTips(context) async {
    var _sportsProvider = getSportsProvider(context);

    try {
      var response = await Dio().get(BASE_URL + "/tips");
      _sportsProvider.resetListTips();
      for (var item in response.data) {
        _sportsProvider.addItemListTips(TipModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
