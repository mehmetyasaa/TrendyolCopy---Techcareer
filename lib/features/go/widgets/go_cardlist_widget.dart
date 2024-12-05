import 'package:flutter/material.dart';

class GoCardlistWidget extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;
  final String imagePath;
  final VoidCallback onPressed;

  const GoCardlistWidget({
    super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              // Image (it will be on top of the background)
              Positioned(
                right: -34,
                top: -15,
                child: Image.asset(
                  imagePath,
                  height: 160,
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (description.isNotEmpty)
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        onPressed: onPressed,
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.white,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.green, // Replace with your custom color
                          minimumSize: const Size(18, 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
