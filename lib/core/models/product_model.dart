class Product {
  final String image;
  final String title;
  final double price;
  final String? category;
  final bool? isFlashProduct;
  final double? oldPrice;
  final int? stock;
  final double? rating;
  final List<String> ratingList;
  final List<Map<String, String>> features;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      this.isFlashProduct,
      this.oldPrice,
      this.stock,
      this.category,
      this.rating = 0,
      this.ratingList = const [],
      this.features = const []});
}
