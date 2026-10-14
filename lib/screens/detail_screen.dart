import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/camera_button.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.network(product.image, height: 300, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(product.price, style: TextStyle(fontSize: 18, color: Color(0xFF2D5A8A), fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                CameraButton(productImage: product.image),
                SizedBox(height: 10),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text("BELI SEKARANG - COD SHOPEE"))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
