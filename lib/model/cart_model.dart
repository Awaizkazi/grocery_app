import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  // List of items on Sale
  final List _shopItems = [
    // [itemName , itemPrice , imagePath, color]
    ['Avacado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'lib/images/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'lib/images/chicken.png', Colors.brown],
    ['Water', '4.00', 'lib/images/water.png', Colors.blue],
  ];
  get shopItems => _shopItems;
}
