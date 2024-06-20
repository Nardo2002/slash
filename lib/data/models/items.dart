class Item {
  final int id;
  final String name;
  final double price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
