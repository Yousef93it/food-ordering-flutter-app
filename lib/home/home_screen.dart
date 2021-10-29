import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/badge.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/home/search_field.dart';

import '../meal_detail/meal_detail_screen.dart';
import '../restaurant/restaurant_screen.dart';
import '../style.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black38),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Badge(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 27,
                color: Colors.black38,
              ),
            ),
            value: "2",
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 10),
                const SearchField(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Today's specials",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "You're lucky Today's menus are a chef's kiss!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 350,
                        padding: const EdgeInsets.symmetric(
                          vertical: 40,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: blue,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 10),
                              blurRadius: 0,
                              color: blue.withOpacity(0.4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/food1.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "Tokyo Sushi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Lorem ipsium was ist daaaas?!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              color: green,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 10),
                                  blurRadius: 0,
                                  color: green.withOpacity(0.4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/food2.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  "Okinawa Sushi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              color: black,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 10),
                                  blurRadius: 0,
                                  color: black.withOpacity(0.4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/food3.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  "Somewhere's Sushi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Recent Orders",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dishItemWidget(context, "sushi", "Row Sushi",
                          "10 types of sushi served in a row"),
                      const SizedBox(width: 10),
                      dishItemWidget(context, "sushi2", "Prato Sushi",
                          "10 types of sushi served in a row"),
                      const SizedBox(width: 10),
                      dishItemWidget(context, "sushi3", "Sushi Box",
                          "10 types of sushi served in a row"),
                      const SizedBox(width: 10),
                      dishItemWidget(context, "sushi4", "Row Sushi",
                          "10 types of sushi served in a row"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Places",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                restaurantsbuilder(context, "hotel1", "Sushi Den"),
                const SizedBox(
                  height: 20,
                ),
                restaurantsbuilder(context, "hotel2", "Le Davincci"),
                const SizedBox(
                  height: 20,
                ),
                restaurantsbuilder(context, "hotel3", "Subway"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox dishItemWidget(BuildContext context, String dishImg, String dishName,
      String dishDescription) {
    return SizedBox(
      width: 120,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(MealDetailScreen.routeName);
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/$dishImg.png"),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dishName,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                dishDescription,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(MealDetailScreen.routeName);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: black),
                  ),
                  child: const Text("more info"),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }

  Row restaurantsbuilder(
      BuildContext context, String img, String restaurantName) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$img.png"),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurantName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: aBitLighterGreen,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: aBitLighterGreen,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: aBitLighterGreen,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: aBitLighterGreen,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: aBitLighterGreen,
                  ),
                ],
              ),
              const Text(
                "Lorem ipsum sits dolar amet is for publishing",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(RestaurantScreen.routeName);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              color: aBitLighterGreen,
            ),
            child: const Text(
              "Check In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
