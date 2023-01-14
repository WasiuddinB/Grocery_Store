import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Apple", "250.00", "lib/images/apple.jpg", Colors.red],
    ["Banana", "150.00", "lib/images/banana.jpg", Colors.yellow],
    ["Mango", "450.00", "lib/images/mango.jpg", Colors.orange],
    ["Strawberry", "350.00", "lib/images/strawberry.jpg", Colors.red],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
