import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/post_model.dart';

class TimeLineViewModel extends ChangeNotifier {
  List<PostModel> posts = [];

  Future getListData() async {
    await Future.delayed(const Duration(seconds: 2));
    int count = Faker().randomGenerator.integer(100, min: 30);
    for (var i = 0; i < count; i++) {
      posts.add(PostModel.fake());
    }
  }
}
