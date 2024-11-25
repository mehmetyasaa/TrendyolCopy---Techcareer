import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 30,
      width: 30,
      top: 12,
      right: 17,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Color.fromARGB(255, 106, 106, 106),
            size: 18,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
