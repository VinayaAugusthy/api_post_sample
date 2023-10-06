class MenuItem {
  final String name;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  // Factory constructor to create a MenuItem object from JSON data
  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }
}



// restaurant_details_page.dart





