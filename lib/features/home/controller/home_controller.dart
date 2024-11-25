import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> categories = [
    'category.woman'.tr,
    'category.man'.tr,
    'category.home_and_life'.tr,
    'category.home.electronic'.tr,
    'category.home.supermarket'.tr
  ];

  final RxInt currentCategoryIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentCategoryIndex.value);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  // Kategori değiştirme ve geçiş
  void changeCategory(int index) {
    currentCategoryIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }
}
