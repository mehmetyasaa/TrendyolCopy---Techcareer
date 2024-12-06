import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/features/go/widgets/custom_image_container_widgets.dart';
import 'package:trendyol_copy/features/go/widgets/go_custom_card_widgets.dart';
import 'package:trendyol_copy/features/go/widgets/speed_market_widgets.dart';

class TrendyolgoView extends StatelessWidget {
  const TrendyolgoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: AppBar(
            title: const Text(
              "Trendyol Go",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        body: Column(children: [
          const Divider(
            color: AppColors.shadowGrey,
          ),
          Row(
            children: [
              CustomCard(
                btnColor: AppColors.customGreen,
                boxShadowColor:
                    const Color.fromARGB(255, 28, 210, 58).withOpacity(0.4),
                buttonText: 'Market siparişi ver!',
                containerColor: const Color.fromARGB(255, 239, 253, 241),
                imagePath: 'assets/images/sepet.png',
                subTitle: 'hızlı market',
              ),
              const CustomCard(
                boxShadowColor: AppColors.customOrange,
                btnColor: AppColors.customOrange,
                buttonText: 'Yemek siparişi ver!',
                containerColor: Color.fromARGB(255, 255, 250, 240),
                imagePath: 'assets/images/singleBurger.png',
                subTitle: 'yemek',
              ),
            ],
          ),
          const CustomImageContainer(),
          const SpeedMarket()
        ]));
  }
}
