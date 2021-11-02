import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'size_config.dart';

// Colors I used in the app
const blue =  Color(0xff50c9ff);
const green =  Color(0xff00e582);
const black =  Color(0xff4d4d4d);
const aBitLighterGreen =  Color(0xff00d672);
// ------------------------------------------------
const kMainColor = Color(0xFF010F07);
const kActiveColor = Color(0xFF22A45D);
const kBodyTextColor = Color(0xFF868686);

// Text styles
final TextStyle kSecondaryBodyTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.w500,
  color: kMainColor,
  // height: 1.5,
);
final TextStyle kH2TextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.w600,
  letterSpacing: 0.18,
);
final TextStyle kH3TextStyle = kH2TextStyle.copyWith(
  fontSize: getProportionateScreenWidth(20),
  letterSpacing: 0.14,
);
final TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.bold,
);
final TextStyle kH1TextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(34),
  fontWeight: FontWeight.w500,
  letterSpacing: 0.22,
);
final TextStyle kBodyTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  color: kBodyTextColor,
  height: 1.5,
);

// Common Text
final Center kOrText = Center(
    child: Text("Or", style: TextStyle(color: kMainColor.withOpacity(0.7))));

// Validator
final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: 'Enter a valid email address')
]);
final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-/])',
      errorText: 'Passwords must have at least one special character')
]);
final requiredValidator =
    RequiredValidator(errorText: 'This field is required');
final matchValidator = MatchValidator(errorText: 'passwords do not match');

//padding
const double kDefaultPadding = 20.0;
final EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(
  horizontal: kDefaultPadding,
  vertical: getProportionateScreenHeight(kDefaultPadding),
);