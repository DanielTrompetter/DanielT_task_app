import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

final List<Product> products = [
  Product(name: 'Äpfel', price: 1.20),
  Product(name: 'Brot', price: 2.50),
  Product(name: 'Käse', price: 3.80),
  Product(name: 'Milch', price: 0.99),
  Product(name: 'Bier', price: 1.29),
];

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: products.map((product) => ListTile(
            title: Text('${product.name} – €${product.price.toStringAsFixed(2)}'),
          )).toList(),
        ),
      ],
    );
  }
}
