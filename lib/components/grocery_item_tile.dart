import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  GroceryItemTile({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            // Image
            Image.asset(
              imagePath,
              height: 64,
            ),
            // item name

            // price + button
          ],
        ),
      ),
    );
  }
}
