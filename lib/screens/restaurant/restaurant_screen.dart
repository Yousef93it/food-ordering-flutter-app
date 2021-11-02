import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/badge.dart';

import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/style.dart';
import 'body.dart';

class RestaurantScreen extends StatelessWidget {
  static String routeName = "/restaurant";
  const RestaurantScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: aBitLighterGreen,
        elevation: 0,
        actions: [
          Badge(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 27,
                color: Colors.white,
              ),
            ),
            value: "2",
          ),
        ],
      ),
      body: const SafeArea(
        child: Body(),
      ),
    );
  }
}
