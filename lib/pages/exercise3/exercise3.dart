import 'package:flutter/material.dart';

enum Product implements Comparable<Product> {
  dart(
    title: "Dart",
    description: "The best object language",
    image: "assets/images/ex3/dart.png",
  ),
  flutter(
    title: "Flutter",
    description: "The best mobile library",
    image: "assets/images/ex3/flutter.png",
  ),
  firebase(
    title: "Firebase",
    description: "The best cloud database",
    image: "assets/images/ex3/firebase.png",
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  int compareTo(Product other) => title.compareTo(other.title);
}

class Exercise3 extends StatelessWidget {
  const Exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            ProductCard(
              title: Product.dart.title,
              description: Product.dart.description,
              image: Product.dart.image,
            ),
            ProductCard(
              title: Product.flutter.title,
              description: Product.flutter.description,
              image: Product.flutter.image,
            ),
            ProductCard(
              title: Product.firebase.title,
              description: Product.firebase.description,
              image: Product.firebase.image,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          debugPrint("Card Tapped!");
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(image), width: 100, height: 100),
              Text(title, style: TextStyle(fontSize: 32)),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
