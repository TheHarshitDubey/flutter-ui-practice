import'package:flutter/material.dart';
class productListing extends StatelessWidget {
  const productListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Shop'),
        actions: [
          Icon(Icons.search_rounded),
          Icon(Icons.shopping_cart_rounded),
        ],
      ),
    );
  }
}