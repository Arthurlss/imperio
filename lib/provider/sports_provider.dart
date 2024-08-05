import 'package:flutter/foundation.dart';

class SportsProvider with ChangeNotifier {
  List _listTips = [];
  List _listWonBets = [];
  List _listSports = [];
  List _listChampionship = [];
  List _listMatches = [];

  get listTips => _listTips;
  get listWonBets => _listWonBets;
  get listSports => _listSports;
  get listChampionship => _listChampionship;
  get listMatches => _listMatches;

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
