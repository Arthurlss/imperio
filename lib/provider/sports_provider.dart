import 'package:flutter/foundation.dart';

class SportsProvider with ChangeNotifier {
  List _listTips = [];
  List _listWonBets = [];
  List _listSports = [];
  List _listChampionship = [];
  List _listMatches = [];
  List _listBetsFromMatch = [];
  List _listOdds = [];
  List _listLastMatches = [];
  dynamic _loading = false;
  dynamic _matchDetail;

  get listTips => _listTips;
  get listWonBets => _listWonBets;
  get listSports => _listSports;
  get listChampionship => _listChampionship;
  get listMatches => _listMatches;
  get listBetsFromMatch => _listBetsFromMatch;
  get listOdds => _listOdds;
  get matchDetail => _matchDetail;
  get listLastMatches => _listLastMatches;
  get loading => _loading;

  void setLoading(item) {
    _loading = item;
    notifyListeners();
  }

  void setMatchDetail(item) {
    _matchDetail = item;
    notifyListeners();
  }

  void resetMatchDetail() {
    _matchDetail = null;
    notifyListeners();
  }

  void addItemListLastMatch(item) {
    _listLastMatches.add(item);
    notifyListeners();
  }

  void resetListLastMatch() {
    _listLastMatches = [];
    notifyListeners();
  }

  void addItemListOdds(item) {
    _listOdds.add(item);
    notifyListeners();
  }

  void resetListOdds() {
    _listOdds = [];
    notifyListeners();
  }

  void addItemListBestFromMatch(item) {
    _listBetsFromMatch.add(item);
    notifyListeners();
  }

  void resetListBetsFromMatch() {
    _listBetsFromMatch = [];
    notifyListeners();
  }

  void addItemListMatches(item) {
    _listMatches.add(item);
    notifyListeners();
  }

  void resetListMatches() {
    _listMatches = [];
    notifyListeners();
  }

  void addItemListChampionship(item) {
    _listChampionship.add(item);
    notifyListeners();
  }

  void resetListChampionship() {
    _listChampionship = [];
    notifyListeners();
  }

  void addItemListTips(item) {
    _listTips.add(item);
    notifyListeners();
  }

  void resetListTips() {
    _listTips = [];
    notifyListeners();
  }

  void addItemListSports(item) {
    _listSports.add(item);
    notifyListeners();
  }

  void resetListSports() {
    _listSports = [];
    notifyListeners();
  }

  void addItemListWonBets(item) {
    _listWonBets.add(item);
    notifyListeners();
  }

  void resetListWonBets() {
    _listWonBets = [];
    notifyListeners();
  }
}
