import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/navigation/main_navigation.dart';
import 'package:trendyol_copy/i18n/translation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_title'.tr,
      translations: TranslationService(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'), // Varsayılan dil
      theme: ThemeData(),
      home: const MainNavigation(),
    );
  }
}
