import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constant/size.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSize.defaultPadding,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              offset: const Offset(0, 1.5),
              blurRadius: 2, // Bulanıklık derecesi
            ),
          ],
          color: const Color.fromARGB(255, 240, 248, 255),
          borderRadius: AppSize.halfRadius,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    maxLines: 2,
                    'go.Water_and_Bottle'.tr,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: AppSize.halfRadius),
                    ),
                    onPressed: () {},
                    child: Text(
                      'go.Order_water!'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ))
              ],
            ),
            Image.asset(
              "assets/images/su.png",
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
