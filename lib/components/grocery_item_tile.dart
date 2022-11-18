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
    required this.itemPrice, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
