import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_example/common/presentation/products.dart';
import 'package:provider_shopping_example/features/cart/presentation/cart_screen.dart';

class ShoppingMainScreen extends StatelessWidget {
  const ShoppingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getränke für Batch #3"),
        elevation: 0.7,
        actions: [
          TextButton(
              onPressed: () {
                context.read<Products>().clear();
              },
              child: const Icon(Icons.replay_circle_filled_rounded)),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ));
            },
            child: Row(
              children: [
                Text("${context.watch<Products>().selectedItems.length}"),
                const SizedBox(width: 8),
                const Icon(Icons.shopping_cart_rounded),
              ],
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Consumer<Products>(
          builder: (context, model, child) => ListView.builder(
            itemCount: model.allItems.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(model.allItems[index]),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart_sharp),
                onPressed: () {
                  model.add(model.allItems[index]);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
