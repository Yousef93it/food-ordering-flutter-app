import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/home/home_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/meal_detail/meal_detail_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/restaurant/restaurant_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  MealDetailScreen.routeName: (context) => const MealDetailScreen(),
  RestaurantScreen.routeName: (context) => const RestaurantScreen(),
};
