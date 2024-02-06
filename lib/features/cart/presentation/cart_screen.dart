import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_example/common/presentation/shopping_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ShoppingProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Getränke für Batch #3"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: provider.selectedItems.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(provider.selectedItems[index]),
          ),
        ),
      ),
    );
  }
}
