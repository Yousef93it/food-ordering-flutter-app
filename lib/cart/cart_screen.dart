import 'package:flutter/material.dart';

import 'body.dart';

class CartScreen extends StatelessWidget {
   static String routeName = "/cart";
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
