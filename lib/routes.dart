import 'package:flutter/material.dart';

import 'screens/filter/filter_screen.dart';
import 'screens/forgotPassword/forgot_password_screen.dart';
import 'screens/forgotPassword/reset_email_sent_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/meal_detail/meal_detail_screen.dart';
import 'screens/order/order_screen.dart';
import 'screens/restaurant/restaurant_screen.dart';
import 'screens/signIn/sign_in_screen.dart';
import 'screens/signUp/sign_up_screen.dart';
import 'screens/unknown_route/unknown_route_screen.dart';
import 'screens/favorites/favorites_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  OrderScreen.routeName: (context) => const OrderScreen(),
  MealDetailScreen.routeName: (context) => const MealDetailScreen(),
  RestaurantScreen.routeName: (context) => const RestaurantScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ResetEmailSentScreen.routeName: (context) => ResetEmailSentScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  FilterScreen.routeName: (context) => FilterScreen(),
  UnknownRouteScreen.routeName: (context) => UnknownRouteScreen(),
  FavoritesScreen.routeName: (context) => FavoritesScreen(),




};
