import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/constant/assets.dart';

class ImageSliderDemo extends StatelessWidget {
  const ImageSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        width: double.infinity,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlayInterval: const Duration(seconds: 3),
            autoPlay: true,
            aspectRatio: 4.0,
            viewportFraction: 1.0,
          ),
          items: AppAssets()
              .imgList
              .map((item) => SizedBox(
                    height: 200,
                    child: Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
