import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/favorites/components/favorites_item.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);
  final List<Map<String, String>> favoritesDemo = [
   {
     "id": "m1",
     "title": "Sushi plate",
     "image": "assets/images/Ebi Fry.jpeg"
   },
    {
     "id": "m2",
     "title": "Ebi Fry",
     "image": "assets/images/Ebi Fry.jpeg"
   },
   {
     "id": "m3",
     "title": "Okinawa Sushi",
     "image": "assets/images/Ebi Fry.jpeg"
   },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ListView.builder(
                          itemCount: favoritesDemo.length,
                          itemBuilder: (ctx, index) => Column(
                            children: [
                             FavoritesItem(favoritesDemo[index]["id"], favoritesDemo[index]["title"], favoritesDemo[index]["image"]),
                              const Divider(),
                            ],
                          ),
                        ),
                      );
  }
}