import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/size.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonText;
  final Color btnColor;
  final Color boxShadowColor;
  final Color containerColor;
  final String imagePath;

  const CustomCard({
    super.key,
    this.title = "trendyol",
    required this.subTitle,
    required this.buttonText,
    required this.btnColor,
    required this.boxShadowColor,
    required this.containerColor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppSize.defaultPadding,
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
                  padding: AppSize.defaultPadding,
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
                            color: Colors
                                .orange), // AppColors.customOrange yerine direkt renk kullanılabilir
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
