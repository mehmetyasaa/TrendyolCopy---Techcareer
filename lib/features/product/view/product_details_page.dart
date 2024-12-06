import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/size.dart';
import 'package:trendyol_copy/core/models/product_model.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/core/widgets/custom_appbar_widgets.dart';
import 'package:trendyol_copy/features/product/widgets/features_card_widgets.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isProductPage: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false, //geri butonu
            expandedHeight: MediaQuery.of(context).size.height,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: AppSize.defaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) {
                              final int ratingValue =
                                  product.rating?.toInt() ?? 0;

                              return Icon(
                                index < ratingValue
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.amber,
                                size: 18,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        
                        Text(
                          '| ${product.ratingList.length} değerlendirme',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Wrap(
                        spacing: 8, // Yatay boşluk
                        children: product.features.map((feature) {
                          final String key = feature.keys.first;
                          final String value = feature.values.first;

                          return FeaturesCardWidget(key, value);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '${product.price} TL',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.customOrange,
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 165, 21),
                      shape: RoundedRectangleBorder(
                          borderRadius: AppSize.halfRadius)),
                  child: const Text(
                    "Şimdi Al",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.customOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: AppSize.halfRadius)),
                  child: const Text(
                    "Sepete Ekle",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
