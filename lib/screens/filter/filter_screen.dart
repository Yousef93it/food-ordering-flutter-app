import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/badge.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/cart/cart_screen.dart';

import '../../constants.dart';
import 'components/body.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = "/filter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: const Text("Filters"),
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
      body: Body(),
    );
  }
}
