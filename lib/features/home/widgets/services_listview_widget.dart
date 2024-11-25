import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constan/assets.dart';
import 'package:trendyol_copy/core/models/service_item_model.dart';

class ServiceWidget extends StatelessWidget {
  final List<ServiceItem> services = [
    ServiceItem(
      title: 'home.category.food'.tr,
      image: AppAssets.food,
    ),
    ServiceItem(
      title: 'home.category.quickMarket'.tr,
      image: AppAssets.quickMarket,
    ),
    ServiceItem(
      title: 'home.category.coupons'.tr,
      image: AppAssets.coupons,
    ),
    ServiceItem(
      title: 'home.category.categories'.tr,
      image: AppAssets.categories,
    ),
    ServiceItem(
      title: 'home.category.installment'.tr,
      image: AppAssets.installment,
    ),
  ];

  ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'home.explore_our_services'.tr,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (context, index) {
                final item = services[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Image.asset(item.image),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
