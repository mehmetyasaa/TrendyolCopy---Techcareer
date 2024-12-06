import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/features/home/widgets/message_icon.dart';
import 'package:trendyol_copy/features/home/widgets/notification_icon.dart';
import 'package:trendyol_copy/features/home/widgets/search_bar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
    this.isProductPage = false,
  });
  final bool isProductPage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteBackGroundColor,
      // automaticallyImplyLeading:
      //     isProductPage, //product detay sayfasında ise geri dönüş butonu ekler
      title: Row(
        children: [
          Expanded(
              child: SearchBarWidget(
            isProductPage: isProductPage,
          )),
          MessageIcon(
            isProductPage: isProductPage,
          ),
          NotificationIcon(
            isProductPage: isProductPage,
          ),
        ],
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
