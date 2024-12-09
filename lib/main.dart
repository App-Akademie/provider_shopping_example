import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_example/common/presentation/products.dart';
import 'package:provider_shopping_example/features/main_screen/presentation/shopping_main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Products(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShoppingMainScreen(),
    );
  }
}
