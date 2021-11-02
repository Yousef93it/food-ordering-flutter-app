import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign-in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        backgroundColor: aBitLighterGreen,
      ),
      body: Body(),
    );
  }
}
