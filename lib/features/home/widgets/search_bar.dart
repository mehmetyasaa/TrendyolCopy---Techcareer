import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constant/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.isProductPage,
  });

  final bool isProductPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: isProductPage ? 150 : double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'home.search_hintText'.tr,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search, color: AppColors.customOrange, size: 20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[100],
          filled: true,
        ),
      ),
    );
  }
}
