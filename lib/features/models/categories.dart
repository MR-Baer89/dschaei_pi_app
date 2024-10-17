import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Expanded(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 0.3),
                      borderRadius: BorderRadius.circular(40))),
              child: const Row(children: [
                Icon(Icons.fastfood_outlined, color: Colors.white),
                Text(
                  " All categories",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                )
              ]),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[50],
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(40))),
              child: const Text(
                "Salty",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 0.3),
                      borderRadius: BorderRadius.circular(40))),
              child: const Text(
                "Sweet",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 0.3),
                      borderRadius: BorderRadius.circular(40))),
              child: const Text(
                "Drinks",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
