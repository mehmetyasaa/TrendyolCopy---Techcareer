import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';

class CategorySlider extends StatelessWidget {
  final List<String> categories;
  final ValueChanged<int> onCategoryChanged;
  final int currentCategoryIndex;

  const CategorySlider({
    super.key,
    required this.categories,
    required this.onCategoryChanged,
    required this.currentCategoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteBackGroundColor,
        border: Border(
          bottom: BorderSide(
            color: AppColors.shadowGrey,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15, top: 2),
        child: SizedBox(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final bool isSelected = currentCategoryIndex == index;
              return GestureDetector(
                onTap: () => onCategoryChanged(index),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.customOrange
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.customOrange
                          : Colors.grey.shade400,
                    ),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
