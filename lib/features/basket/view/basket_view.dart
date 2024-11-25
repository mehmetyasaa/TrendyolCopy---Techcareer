import 'package:flutter/material.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Septim"),
      ),
      body: const Center(
        child: Text("Sepetim Sayfası"),
      ),
    );
  }
}
