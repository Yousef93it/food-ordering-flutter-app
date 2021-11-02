import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens//home/home_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens//meal_detail/meal_detail_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens//restaurant/restaurant_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  MealDetailScreen.routeName: (context) => const MealDetailScreen(),
  RestaurantScreen.routeName: (context) => const RestaurantScreen(),
};
