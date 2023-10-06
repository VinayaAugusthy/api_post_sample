import 'package:api/item_model.dart';
import 'package:api/model.dart';
import 'package:flutter/foundation.dart';

class RestaurantList with ChangeNotifier {
  List<Restaurant> _restaurants = [];

  RestaurantList() {
    // Initialize 5 restaurant objects
    _restaurants = [
      Restaurant(
        id: '1',
        name: 'Restaurant 1',
        address: 'Address 1',
        description: 'Description 1',
        menuItems: [
          MenuItem(
              name: 'Item 1.1',
              price: 150.00,
              imageUrl: 'assets/images/biriyani.jpeg'),
          MenuItem(
              name: 'Item 1.2',
              price: 210.00,
              imageUrl: 'assets/images/biriyani.jpeg'),
        ],
      ),
      Restaurant(
        id: '2',
        name: 'Restaurant 2',
        address: 'Address 2',
        description: 'Description 2',
        menuItems: [
          MenuItem(
              name: 'Item 1.1',
              price: 150.00,
              imageUrl: 'assets/images/biriyani.jpeg'),
          MenuItem(
            name: 'Item 1.2',
            price: 210.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          )
        ],
      ),
      Restaurant(
        id: '3',
        name: 'Restaurant 3',
        address: 'Address 3',
        description: 'Description 3',
        menuItems: [
          MenuItem(
            name: 'Item 1.1',
            price: 150.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          ),
          MenuItem(
            name: 'Item 1.2',
            price: 210.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          )
        ],
      ),
      Restaurant(
        id: '4',
        name: 'Restaurant 4',
        address: 'Address 4',
        description: 'Description 4',
        menuItems: [
          MenuItem(
            name: 'Item 1.1',
            price: 150.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          ),
          MenuItem(
              name: 'Item 1.2',
              price: 210.00,
              imageUrl: 'assets/images/biriyani.jpeg'),
        ],
      ),
      Restaurant(
        id: '5',
        name: 'Restaurant 5',
        address: 'Address 5',
        description: 'Description 5',
        menuItems: [
          MenuItem(
            name: 'Item 5.1',
            price: 550.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          ),
          MenuItem(
            name: 'Item 5.2',
            price: 510.00,
            imageUrl: 'assets/images/biriyani.jpeg',
          )
        ],
      ),
    ];
  }

  List<Restaurant> get restaurants => _restaurants;
}
