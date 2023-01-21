import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

    if (index == 0) {
      Modular.to.navigate('/home');
    } else if (index == 1) {
      Modular.to.navigate('/investiment');
    }

    notifyListeners();
  }
}
