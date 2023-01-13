import 'package:flutter/foundation.dart';

class HomeController extends ChangeNotifier {
  static HomeController instance = HomeController();

  bool isHidden = false;
  int valueCurrentNavigation = 0;

  changeVisibility() {
    isHidden = !isHidden;
    notifyListeners();
  }

  changePage(int index) {
    valueCurrentNavigation = index;
    notifyListeners();
  }
}
