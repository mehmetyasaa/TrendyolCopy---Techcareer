import 'package:flutter/material.dart';

class MessageIcon extends StatelessWidget {
  const MessageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mail_outline,
            color: Colors.black,
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
