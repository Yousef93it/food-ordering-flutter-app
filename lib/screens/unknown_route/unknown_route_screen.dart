import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/constants.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/home/home_screen.dart';

class UnknownRouteScreen extends StatelessWidget {
  static String routeName = "/page-not-found";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/404 Error.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            right: MediaQuery.of(context).size.width * 0.3,
            child: FlatButton(
              color: aBitLighterGreen,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              child: Text(
                "Go Home".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
