import 'package:flutter/material.dart';

// In der Folien-Architektur ist der Provider ein "Controller".
class ShoppingProvider extends ChangeNotifier {
  final List<String> _selectedItems = [];
  final List<String> _allItems = [
    "Cola",
    "Apfel",
    "Wasser",
    "Bier",
  ];

  // Read-Only-Zugriff wie über ein Property
  List<String> get selectedItems => _selectedItems;
  List<String> get allItems => _allItems;

  void add(String item) {
    _selectedItems.add(item);
    notifyListeners();
  }

  void clear() {
    _selectedItems.clear();
    notifyListeners();
  }
}
