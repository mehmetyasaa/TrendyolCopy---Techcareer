import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/products.dart'; 
import 'package:trendyol_copy/features/home/widgets/product_card.dart';

class ProductListWidgets extends StatelessWidget {
  final String selectedCategory; 

  const ProductListWidgets({
    super.key,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products
        .where((product) => product.category == selectedCategory)
        .toList();

    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          final product = filteredProducts[index];
          return ProductCard(product: product); 
        },
      ),
    );
  }
}
