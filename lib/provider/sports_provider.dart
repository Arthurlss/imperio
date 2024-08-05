import 'package:flutter/foundation.dart';

class SportsProvider with ChangeNotifier {
  List _listTips = [];
  List _listWonBets = [];

  get listTips => _listTips;
  get listWonBets => _listWonBets;

  void addItemListTips(item) {
    _listTips.add(item);
    notifyListeners();
  }

  void resetListTips() {
    _listTips = [];
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
