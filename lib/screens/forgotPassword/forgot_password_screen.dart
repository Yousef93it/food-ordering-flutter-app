import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot-password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
