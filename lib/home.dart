import 'package:api/restaurant_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'restaurant_list.dart';


class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurantList = Provider.of<RestaurantList>(context);
    final restaurants = restaurantList.restaurants;

    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant List'),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return ListTile(
            title: Text(restaurant.name),
            subtitle: Text(restaurant.address),
            onTap: () {
              // Navigate to the restaurant details page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RestaurantDetailsPage(restaurant),
                ),
              );
            },
          );
        },
      ),
    );
  }
}