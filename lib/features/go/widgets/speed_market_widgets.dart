import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constant/size.dart';
import 'package:trendyol_copy/features/go/widgets/go_cardlist_widget.dart';

class SpeedMarket extends StatelessWidget {
  const SpeedMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSize.defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'go.fast_market'.tr,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              GoCardlistWidget(
                title: 'go.Come_Now'.tr,
                description: 'go.go_fast'.tr,
                backgroundColor: Colors.green.shade100,
                imagePath: "assets/images/sepet2.png",
                onPressed: () {},
              ),
              const SizedBox(width: 16),
              GoCardlistWidget(
                title: 'go.Come_at_any_time_you_want!'.tr,
                description: "",
                backgroundColor: Colors.green.shade50,
                imagePath: "assets/images/yemek2.png",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
