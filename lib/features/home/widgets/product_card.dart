import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/core/models/product_model.dart';

import 'package:trendyol_copy/features/home/widgets/favorite_icon.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 300,
      child: Stack(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  product.image,
                  height: 220,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    '${product.price} TL',
                    style: const TextStyle(color: AppColors.customOrange),
                  ),
                ),
              ],
            ),
          ),
          const FavoriteIcon(),
        ],
      ),
    );
  }
}
