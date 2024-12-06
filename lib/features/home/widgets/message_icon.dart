// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MessageIcon extends StatelessWidget {
  const MessageIcon({
    super.key,
    required this.isProductPage,
  });
  final bool isProductPage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: isProductPage
              ? const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color.fromARGB(255, 92, 92, 92),
                )
              : const Icon(
                  Icons.mail_outline,
                ),
        ),
        Positioned(
          right: 4,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              "4",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
