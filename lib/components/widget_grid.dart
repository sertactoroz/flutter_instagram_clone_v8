import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class WidgetGrid extends StatelessWidget {
  const WidgetGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();

    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          faker.randomGenerator.integer(100, min: 50),
          (index) => containerProducer(faker.image.image(random: true)),
        ));
  }

  Container containerProducer(String fakerString) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Image.network(
        fakerString,
        fit: BoxFit.cover,
      ),
    );
  }
}
