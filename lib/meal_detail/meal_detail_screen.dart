import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/meal_detail/body.dart';

class MealDetailScreen extends StatelessWidget {
   static String routeName = "/meal-detail";
  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      body: Body(),
    );
  }
}