import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(product.imageUrl),
        title: Text(product.name),
        subtitle: Text(product.description),
        trailing: Text('€${product.price.toStringAsFixed(2)}'),
        onTap: () {},
      ),
    );
  }
}
