import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  dynamic _login;

  get login => _login;

  void setLogin(item) {
    _login = item;
    notifyListeners();
  }

  void resetLogin() {
    _login = null;
    notifyListeners();
  }
}
