import 'package:flutter/material.dart';

class SizeQuantity extends StatefulWidget {
  const SizeQuantity({super.key});

  @override
  SizeQuantityState createState() => SizeQuantityState();
}

class SizeQuantityState extends State<SizeQuantity> {
  String selectedSize = 'Medium';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToggleButtons(
            isSelected: [
              selectedSize == 'Small',
              selectedSize == 'Medium',
              selectedSize == 'Large',
            ],
            onPressed: (int index) {
              setState(() {
                selectedSize = ['Small', 'Medium', 'Large'][index];
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Small', style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Medium', style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Large', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),

          // Quantity buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (quantity > 1) {
                      quantity--;
                    }
                  });
                },
              ),
              Text(
                '$quantity',
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
