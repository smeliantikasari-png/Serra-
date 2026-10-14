import 'package:flutter/material.dart';
import '../data/products.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SERRA"), backgroundColor: Color(0xFF2D5A8A), foregroundColor: Colors.white),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: dummyProducts.length,
        itemBuilder: (_, i) => ProductCard(product: dummyProducts[i]),
      ),
    );
  }
}
