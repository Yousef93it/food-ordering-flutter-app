import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign-up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
