import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<int> _favoriteItem = [];
  List<int> get favoriteItem => _favoriteItem;

  void toggleFavorite(int value) {
    final isExist = _favoriteItem.contains(value);
    if (isExist) {
      _favoriteItem.remove(value);
    } else {
      _favoriteItem.add(value);
    }
    notifyListeners();
  }

  bool isExist(int value) {
    final isExist = _favoriteItem.contains(value);
    return isExist;
  }

  void removeFromFavorite(int value) {
    _favoriteItem.remove(value);
    notifyListeners();
  }
}
