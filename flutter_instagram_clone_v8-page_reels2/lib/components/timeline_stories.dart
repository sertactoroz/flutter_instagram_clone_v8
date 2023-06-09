import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class TimelineStories extends StatefulWidget implements PreferredSizeWidget {
  const TimelineStories({super.key});

  @override
  State<TimelineStories> createState() => _TimelineStoriesState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _TimelineStoriesState extends State<TimelineStories> {
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _storyItemFirst(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
        ],
      ),
    );
  }
}

Widget _storyItem() {
  final faker = Faker();

  return Stack(children: <Widget>[
    Column(
      children: [
        Container(
          margin: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.orange,
              ],
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(3),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(faker.image.image(random: true)),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          child: Text(
            faker.person.firstName(),
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
  ]);
}

Widget _storyItemFirst() {
  return Stack(children: <Widget>[
    Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        margin: const EdgeInsets.all(3),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/profile.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    Positioned(
      top: 50,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        child: FittedBox(
          child: IconButton(
            icon: Icon(
              Icons.add,
              size: 35,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        width: 26,
        height: 26,
        decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      ),
    )
  ]);
}
