import 'package:flutter/material.dart';
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
          const Text(
            "Hızlı Market",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              GoCardlistWidget(
                title: "Hemen Gelsin",
                description: "go hızlıyla",
                backgroundColor: Colors.green.shade100,
                imagePath: "assets/images/sepet2.png",
                onPressed: () {
                },
              ),
              const SizedBox(width: 16),
              GoCardlistWidget(
                title: "Dilediğin saatte gelsin!",
                description: "",
                backgroundColor: Colors.green.shade50,
                imagePath: "assets/images/yemek2.png", 
                onPressed: () {
                },
              ),
            ],
          ),
        ],
      ),
    );
  }


}
