import 'package:flutter/material.dart';

enum Product {
  dart(
    'Dart', 
    'the best object language', 
    'assets/ex3/dart.png'
  ),
  
  flutter(
    'Flutter',
    'the best mobile widget library',
    'assets/ex3/flutter.png',
  ),
  
  firebase(
    'Firebase', 
    'the best cloud database', 
    'assets/ex3/firebase.png'
  );

  final String title;
  final String description;
  final String image;
  
  const Product(this.title, this.description, this.image);
}

class ProductCard extends StatelessWidget {
  final Product product;
  
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, height: 75),
            const SizedBox(height: 10),
            Text(product.title, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text(product.description, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Products'),
          backgroundColor: Colors.pink[50],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.dart),
              ProductCard(product: Product.flutter),
              ProductCard(product: Product.firebase),
            ],
          ),
        ),
      ),
    ),
  );
}
