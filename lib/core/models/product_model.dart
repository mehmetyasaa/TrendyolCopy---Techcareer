class Product {
  final String image;
  final String title;
  final double price;
  final String? category;
  final bool? isFlashProduct;
  final double? oldPrice;
  final int? stock;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.isFlashProduct,
    this.oldPrice,
    this.stock,
    this.category,
  });
}
