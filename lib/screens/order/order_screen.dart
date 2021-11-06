import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/orders";
  const OrderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: const Text("Your Orders"),
      ),
      body: Body(),
    );
  }
}
