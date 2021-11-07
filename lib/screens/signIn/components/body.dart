import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/social_button.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/welcome_text.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/home/home_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/signUp/sign_up_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
              title: "Welcome to",
              text:
                  "Enter your Phone number or Email \naddress for sign in. Enjoy your food :)",
            ),
            // SignInForm contains forget password
            const SignInForm(),
            const VerticalSpacing(),
            kOrText,
            const VerticalSpacing(of: 20),
            Center(
              child: Text.rich(
                TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w600),
                  text: "Don’t have account? ",
                  children: <TextSpan>[
                    TextSpan(
                      text: "Create new account.",
                      style: const TextStyle(color: kActiveColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
            const VerticalSpacing(),
            SocialButton(
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              text: "Connect with Facebook",
              color: const Color(0xFF395998),
              icon: SvgPicture.asset(
                'assets/icons/facebook.svg',
                color: const Color(0xFF395998),
              ),
            ),
            const VerticalSpacing(of: 15),
            SocialButton(
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              text: "Connect with Google",
              color: const Color(0xFF4285F4),
              icon: SvgPicture.asset(
                'assets/icons/google.svg',
              ),
            ),
            const VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
