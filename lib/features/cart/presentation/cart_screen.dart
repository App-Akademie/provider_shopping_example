import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_example/common/presentation/products.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productModel = context.watch<Products>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Getränke für Batch #3"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: productModel.selectedItems.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(productModel.selectedItems[index]),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: () =>
                  productModel.remove(productModel.selectedItems[index]),
            ),
          ),
        ),
      ),
    );
  }
}
