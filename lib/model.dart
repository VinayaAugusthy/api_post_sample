
import 'package:api/item_model.dart';

class Restaurant {
  final String id;
  final String name;
  final String address;
  final String description;
  final List<MenuItem> menuItems;

  Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.menuItems,
  });

  // Factory constructor to create a Restaurant object from JSON data
  factory Restaurant.fromJson(Map<String, dynamic> json) {
    final menuItemsJson = json['menuItems'] as List<dynamic>;
    final menuItems = menuItemsJson.map((itemJson) => MenuItem.fromJson(itemJson)).toList();

    return Restaurant(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      description: json['description'],
      menuItems: menuItems,
    );
  }
}