import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/meal_detail/meal_detail_screen.dart';

class FavoritesItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  FavoritesItem(this.id, this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(MealDetailScreen.routeName);
      },
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {},
        color: Theme.of(context).errorColor,
      ),
    );
  }
}
