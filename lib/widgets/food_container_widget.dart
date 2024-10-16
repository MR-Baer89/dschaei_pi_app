import 'dart:ui';
import 'package:flutter/material.dart';

class FoodContainerWidget extends StatelessWidget {
  final String title;
  final String flavor;
  final String imagePath;
  final String price;

  const FoodContainerWidget(
      {super.key,
      required this.title,
      required this.flavor,
      required this.imagePath,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),
        child: Container(
          width: 204,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white, width: 0.2),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(57, 82, 82, 82),
                Color.fromARGB(132, 134, 90, 255),
                Color.fromARGB(132, 134, 90, 255),
                Color.fromARGB(132, 134, 90, 255),
                Color.fromARGB(155, 105, 28, 177)
              ],
              stops: [0.1, 0.35, 0.5, 0.6, 0.9],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePath),
                const SizedBox(height: 8),
                Text(title, style: TextStyle(color: Colors.white)),
                Text(flavor, style: TextStyle(color: Colors.white)),
                Text(price, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
