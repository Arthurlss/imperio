import 'package:dio/dio.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/model/championship_model.dart';
import 'package:imperio/model/sport_model.dart';

class SportsController {
  Future<dynamic> getSports(context) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/sports");
      _sportsProvider.resetListSports();
      for (var item in response.data) {
        _sportsProvider.addItemListSports(SportModel.fromJson(item));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<dynamic> getChampionships(context) async {
    var _sportsProvider = getSportsProvider(context);
    try {
      var response = await Dio().get(BASE_URL + "/championships");
      _sportsProvider.resetListChampionship();
      for (var item in response.data) {
        _sportsProvider
            .addItemListChampionship(ChampionshipModel.fromJson(item));
      }
      print('object');
    } catch (e) {
      print(e.toString());
    }
  }
}
