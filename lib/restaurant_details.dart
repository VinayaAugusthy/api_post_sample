import 'package:api/model.dart';
import 'package:flutter/material.dart';

class RestaurantDetailsPage extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantDetailsPage(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Name: ${restaurant.name}'),
            ),
            ListTile(
              title: Text('Address: ${restaurant.address}'),
            ),
            ListTile(
              title: Text('Description: ${restaurant.description}'),
            ),
            ListTile(
              title: const Text('Menu Items:'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: restaurant.menuItems
                    .map((item) => ListTile(
                          title: Text(item.name),
                          subtitle:
                              Text('Price: \$${item.price.toStringAsFixed(2)}'),
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item.imageUrl),
                            radius: 40,
                            backgroundColor: Colors.grey,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
