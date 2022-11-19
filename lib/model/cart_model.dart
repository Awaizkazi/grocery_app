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

  // List of  cart items
  List _cartItems = [];
  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // Add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners(); // To Notify the listener to help all the other widgets to update the data  Data Add kar diya hai cart me toh add karke update kardo
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners(); //  items remove kar diya hai remove karke  Update  kardo Isliye notifyListener use kiya hai
  }

  // Calaulate total price
  String calculateTotal() {
    double totalPrice = 0.0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice +=
          double.parse(_cartItems[i][1]); //  index 1 is for the itemPrice
    }
    return totalPrice.toStringAsFixed(2);
  }
}
