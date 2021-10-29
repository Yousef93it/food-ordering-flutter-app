import 'package:flutter/material.dart';

import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';
import 'body.dart';

class RestaurantScreen extends StatelessWidget {
  static String routeName = "/restaurant";
  const RestaurantScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      body: Body(),
    );
  }
}