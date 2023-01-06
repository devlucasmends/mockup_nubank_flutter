import 'package:flutter/foundation.dart';

class HomeController extends ChangeNotifier {
  static HomeController instance = HomeController();

  bool isHidden = false;

  changeVisibility() {
    isHidden = !isHidden;
    notifyListeners();
  }
}
