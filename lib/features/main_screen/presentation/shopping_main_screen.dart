import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_example/common/presentation/shopping_provider.dart';
import 'package:provider_shopping_example/features/cart/presentation/cart_screen.dart';

class ShoppingMainScreen extends StatelessWidget {
  const ShoppingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getränke für Batch #3"),
        actions: [
          Text("${context.watch<ShoppingProvider>().selectedItems.length}"),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ));
            },
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Consumer<ShoppingProvider>(
          builder: (context, provider, child) => ListView.builder(
            itemCount: provider.allItems.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(provider.allItems[index]),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart_sharp),
                onPressed: () {
                  provider.add(provider.allItems[index]);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
