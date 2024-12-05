import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/colors.dart';

class TitleButtonSection extends StatelessWidget {
  const TitleButtonSection({
    super.key,
    required this.title,
    required this.buttonText,
    this.btnClick,
  });

  final String title;
  final String buttonText;
  final Function? btnClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () => btnClick,
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: AppColors.customOrange,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
