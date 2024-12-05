import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constant/products.dart';
import 'package:trendyol_copy/features/home/widgets/product_card.dart';
import 'package:trendyol_copy/features/home/widgets/timer_widget.dart';

class FlashSalesWidget extends StatelessWidget {
  final String selectedCategory;

  const FlashSalesWidget({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    final filteredProducts =
        products.where((product) => product.isFlashProduct == true).toList();

    return Container(
      height: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red.shade500, Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'home.flash_sales'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const TimerWidget(),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'home.view_all'.tr,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return ProductCard(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
