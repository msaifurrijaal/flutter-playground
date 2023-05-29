import 'dart:math';

import 'package:belajar_widget/models/product.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ModelApp extends StatelessWidget {
  final Faker faker = new Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          imageUrl: "https://picsum.photos/id/$index/200",
          judul: faker.food.restaurant(),
          harga: 10000 + Random().nextInt(10000),
          deskripsi: faker.lorem.sentence());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Model App"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridTile(child: Image.network(dummyData[index].imageUrl!));
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
