import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/primary_button.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/welcome_text.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ResetEmailSentScreen extends StatelessWidget {
  static String routeName = "/reset-password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: const Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
                title: "Reset email sent",
                text: "We have sent a instructions email to you"),
            const VerticalSpacing(),
            PrimaryButton(
              text: "Send again",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
