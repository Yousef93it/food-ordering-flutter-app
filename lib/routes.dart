import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/filter/filter_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/forgotPassword/forgot_password_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/forgotPassword/reset_email_sent_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/home/home_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/meal_detail/meal_detail_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/restaurant/restaurant_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/signIn/sign_in_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/signUp/sign_up_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/unknown_route/unknown_route_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  MealDetailScreen.routeName: (context) => const MealDetailScreen(),
  RestaurantScreen.routeName: (context) => const RestaurantScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ResetEmailSentScreen.routeName: (context) => ResetEmailSentScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  FilterScreen.routeName: (context) => FilterScreen(),
  UnknownRouteScreen.routeName: (context) => UnknownRouteScreen(),




};
