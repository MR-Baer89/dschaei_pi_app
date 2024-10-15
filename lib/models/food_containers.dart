import 'package:flutter/material.dart';
import 'dart:ui';

class FoodContainers extends StatelessWidget {
  final String title;
  final String flavor;
  final String imagePath;

  const FoodContainers({
    super.key,
    required this.title,
    required this.flavor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
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
                Color.fromARGB(155, 105, 28, 177),
              ],
              stops: [0.1, 0.5, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePath),
                const SizedBox(height: 8),
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white)),
                Text(flavor,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w300)),
                const Spacer(),
                const Row(
                  children: [
                    Text(
                      "₳8.99",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border_rounded,
                        color: Colors.white, size: 12),
                    Text("200",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
