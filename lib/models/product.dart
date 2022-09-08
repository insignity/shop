class Product {
  final String name;
  final int price;
  final String image;

  const Product({
    required this.name,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json['name'],
        price: json['price'],
        image: json['image'],
      );
}
