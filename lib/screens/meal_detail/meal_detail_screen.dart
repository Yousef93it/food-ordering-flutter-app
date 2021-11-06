import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';

import '../../constants.dart';
import 'body.dart';

class MealDetailScreen extends StatelessWidget {
  static String routeName = "/meal-detail";
  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        actions: [
          IconButton(
            onPressed: () {
              //show a bottomSheet with social media buttons share on facebook, tweeter...
            },
            icon: const Icon(
              Icons.share,
              size: 27,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const SideMenu(),
      body: const Body(),
    );
  }
}
