import 'package:flutter/material.dart';

class DiscoveryViewModel extends ChangeNotifier {
  bool searchView = false;
  bool cancelView = false;

  changeSearchView() async {
    searchView = !searchView;
    notifyListeners();
    if (searchView) {
      await Future.delayed(Duration(milliseconds: 250));
    }
    cancelView = !cancelView;
    notifyListeners();
  }
}
