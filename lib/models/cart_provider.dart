import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  int _numOfItem = 1;
  int get numOfItem => _numOfItem;

  final List<Cart> _cartItem = [];
  List<Cart> get cartItem => _cartItem;

  double _totalPrice = 0;
  double get totalPrice => _totalPrice;

  increaseNumOfItem() {
    _numOfItem++;
    notifyListeners();
  }

  decreaseNumOfItem() {
    _numOfItem--;
    notifyListeners();
  }

  addItem(Cart cart) {
    _cartItem.add(cart);
    notifyListeners();
  }

  removeItem(int index) {
    _cartItem.remove(_cartItem[index]);
    notifyListeners();
  }

  bool isExist(Product prd) {
    for (Cart item in _cartItem) {
      if (item.product == prd) {
        return true;
      }
    }
    return false;
  }

  sumNumOfItem(int numOfItem, Product prd) {
    int index = 0;
    for (Cart item in _cartItem) {
      if (item.product == prd) {
        cartItem[index].numOfItem += numOfItem;
      }
      index++;
    }
  }

  sumPrice(double productPrice, int numOfItem) {
    _totalPrice += productPrice * numOfItem;
    notifyListeners();
  }

  decreasePrice(int index) {
    _totalPrice -= _cartItem[index].product.price * _cartItem[index].numOfItem;
    notifyListeners();
  }
}

class Cart {
  final Product product;
  int numOfItem;

  Cart({required this.product, required this.numOfItem});
}
