import 'package:flutter/material.dart';

class Products extends ChangeNotifier {
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

  void remove(String item) {
    _selectedItems.remove(item);
    notifyListeners();
  }

  void clear() {
    _selectedItems.clear();
    notifyListeners();
  }
}
