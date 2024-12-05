import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/features/go/widgets/custom_image_container_widgets.dart';
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
              _customCard(
                btnColor: AppColors.customGreen,
                boxShadowColor:
                    const Color.fromARGB(255, 28, 210, 58).withOpacity(0.4),
                buttonText: 'Market siparişi ver!',
                containerColor: const Color.fromARGB(255, 239, 253, 241),
                imagePath: 'assets/images/sepet.png',
                subTitle: 'hızlı market',
              ),
              _customCard(
                boxShadowColor: AppColors.customOrange,
                btnColor: AppColors.customOrange,
                buttonText: 'Yemek siparişi ver!',
                containerColor: const Color.fromARGB(255, 255, 250, 240),
                imagePath: 'assets/images/singleBurger.png',
                subTitle: 'yemek',
              ),
            ],
          ),
          const CustomImageContainer(),
          const SpeedMarket()
        ]));
  }

  Widget _customCard({
    String title = "trendyol",
    required String subTitle,
    required String buttonText,
    required Color btnColor,
    required Color boxShadowColor,
    required Color containerColor,
    required String imagePath,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: boxShadowColor,
                offset: const Offset(0, 2),
                blurRadius: 5, // Bulanıklık
              ),
            ],
            color: containerColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -1),
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: AppColors.customOrange),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    imagePath,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 30),
                      backgroundColor: btnColor,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                    ),
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


