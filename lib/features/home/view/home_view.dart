import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constant/colors.dart';
import 'package:trendyol_copy/features/home/controller/home_controller.dart';
import 'package:trendyol_copy/features/home/widgets/category_slider.dart';
import 'package:trendyol_copy/features/home/widgets/flash_sales_widget.dart';
import 'package:trendyol_copy/features/home/widgets/title_button_section_widget.dart';
import 'package:trendyol_copy/features/home/widgets/image_slider.dart';
import 'package:trendyol_copy/features/home/widgets/message_icon.dart';
import 'package:trendyol_copy/features/home/widgets/notification_icon.dart';
import 'package:trendyol_copy/features/home/widgets/product_list_widgets.dart';
import 'package:trendyol_copy/features/home/widgets/search_bar.dart';
import 'package:trendyol_copy/features/home/widgets/services_listview_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBackGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteBackGroundColor,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Expanded(child: SearchBarWidget()),
            MessageIcon(),
            NotificationIcon(),
          ],
        ),
      ),
      body: Column(
        children: [
          // Kategori Slider
          Obx(() => CategorySlider(
                categories: controller.categories,
                currentCategoryIndex: controller.currentCategoryIndex.value,
                onCategoryChanged: (index) {
                  controller.changeCategory(index);
                },
              )),
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.changeCategory(index);
              },
              itemCount: controller.categories.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageSliderDemo(),
                      ServiceWidget(),
                      TitleButtonSection(
                        title: 'home.special_products_title'.tr,
                        buttonText: 'home.view_all'.tr,
                      ),
                      ProductListWidgets(
                        selectedCategory: controller.categories[index],
                      ),
                      
                      FlashSalesWidget(
                        selectedCategory: controller.categories[index],
                      )
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
