import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/constants.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/cart/cart_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/filter/filter_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/home/home_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: aBitLighterGreen),
            child: Image.asset(
              //replace it with the logo of the app
              "assets/images/food1.png",
            ),
          ),
          DrawerListTile(
            title: "Home",
            //  iconSvg: "assets/icons/Home.svg",
            press: () {
              Navigator.of(context)
                  .pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          DrawerListTile(
            title: "Filters",
            // iconSvg: "assets/icons/Home.svg",
            press: () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
          ),
          DrawerListTile(
            title: "Favorites",
            //  iconSvg: "assets/icons/Home.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Cart",
            // iconSvg: "assets/icons/Cart.svg",
            press: () {
              Navigator.of(context)
                  .pushReplacementNamed(CartScreen.routeName);
            },
          ),
          DrawerListTile(
            title: "Orders",
            // iconSvg: "assets/icons/Orders.svg",
            press: () {},
          ),
          //for user to change his Info email, pass, name 
          DrawerListTile(
            title: "Settings",
            // iconSvg: "assets/icons/Settings.svg",
            press: () {},
          ),
          // DrawerListTile(
          //   // iconSvg: "assets/icons/Info.svg",
          //   title: "Help",
          //   press: () {},
          // ),
          DrawerListTile(
            // iconSvg: "assets/icons/Logout.svg",
            title: "Logout",
            press: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    @required this.title,
    // @required this.iconSvg,
    this.iconSvg,
    @required this.press,
  }) : super(key: key);

  final String title;
  String iconSvg;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        // iconSvg,
        "assets/icons/Home.svg",
        width: 16,
        color: aBitLighterGreen,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
