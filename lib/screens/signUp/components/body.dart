import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/social_button.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/welcome_text.dart';

import '../../../constants.dart';
import '../../../screens/signIn/sign_in_screen.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(
                title: "Create Account",
                text: "Enter your Name, Email and Password \nfor sign up.",
              ),

              // Sign Up Form
              SignUpForm(),
              const VerticalSpacing(of: 20),

              // Already have account
              Center(
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontWeight: FontWeight.w500),
                    text: "Already have account? ",
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign In",
                        style: const TextStyle(color: kActiveColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.of(context).pushReplacementNamed(SignInScreen.routeName),
                              
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpacing(of: 20),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms \nConditions & Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ),
              const VerticalSpacing(of: 15),
              kOrText,
              const VerticalSpacing(of: 15),

              // Facebook
              SocialButton(
                press: () {},
                text: "Connect with Facebook",
                color: const Color(0xFF395998),
                icon: SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  color: const Color(0xFF395998),
                ),
              ),
              const VerticalSpacing(of: 15),

              // Google
              SocialButton(
                press: () {},
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
      ),
    );
  }
}
