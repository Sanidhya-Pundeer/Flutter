import 'package:flutter/material.dart';
import 'package:shopping_cart/model/products.dart';

class cartModel extends ChangeNotifier {
  final List<Products> cart = [];

  void add(Products name) {
    cart.add(name);
    notifyListeners();
  }

  void remove(Products name) {
    cart.remove(name);
    notifyListeners();
  }

  void removeAll(Products name) {
    cart.clear();
    notifyListeners();
  }
}
