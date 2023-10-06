// main.dart

import 'package:api/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'restaurant_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => RestaurantList(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RestaurantPage(),
    );
  }
}

// class RestaurantPage extends StatefulWidget {
//   @override
//   _RestaurantPageState createState() => _RestaurantPageState();
// }

// class _RestaurantPageState extends State<RestaurantPage> {
//   // Define the API endpoint URL
//   final String apiUrl = 'https://kezel.co/api/getAllDigitalMenu.php';

//   // Variables to store API data
//   Map<String, dynamic> restaurantData = {};
//   List<dynamic> menuItems = [
//     ['Rice', 'Biriyani'],
//     ['Porotta', 'Alfam']
//   ];
//   String selectedRestaurantKey = '';

//   // Define restaurantMap here
//   Map<String, String> restaurantMap = {
//     'restaurant1': 'Restaurant Name 1',
//     'restaurant2': 'Restaurant Name 2',
//     // 'restaurant3': 'Restaurant Name 3',
//     // Add more restaurants as needed
//   };

//   // Fetch data from the API for the selected restaurant
//   Future<void> fetchRestaurantData(String restaurantKey) async {
//     try {
//       final Map<String, String> headers = {
//         'Content-Type':
//             'application/x-www-form-urlencoded', // Adjust the content type if needed
//         // Add any other headers you need
//       };

//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: headers, // Pass the headers here
//         body: {
//           'key': 'restaurant',
//           'value': restaurantKey,
//         },
//       );
      
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         print(data);
//         setState(() {
//           restaurantMap = data['page_title']??{};
//           menuItems = data['menu_items']??[];
//         });

//         // Navigate to the restaurant details page
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => RestaurantDetailsPage(restaurantData),
//           ),
//         );
//       } else {
//         throw Exception('Failed to load data');
//       }
//     } catch (error) {
//       // Handle the error, e.g., show an error message to the user
//       print('Error fetching data: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Restaurant List'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             // Display restaurant names
//             ListView.builder(
//               itemCount: restaurantMap.length,
//               shrinkWrap: true,
//               itemBuilder: (BuildContext context, int index) {
//                 final restaurantKey = restaurantMap.keys.elementAt(index);
//                 final restaurantName = restaurantMap[restaurantKey];

//                 return ListTile(
//                   title: Text(restaurantName!),
//                   onTap: () {
//                     setState(() {
//                       selectedRestaurantKey = restaurantKey;
//                     });
//                     fetchRestaurantData(restaurantKey);
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
