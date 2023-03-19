import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/reels_model.dart';

class ReelsProvider extends ChangeNotifier {
  List<ReelsModel> reels = [];

  getReelsData() {
    int count = Faker().randomGenerator.integer(100, min: 30);
    for (var i = 0; i < count; i++) {
      reels.add(ReelsModel.fake());
    }
    notifyListeners();
  }
}
