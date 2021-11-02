import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:food_ordering_app_ui_fur_mobile_systeme/routes.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/signIn/sign_in_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/unknown_route/unknown_route_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: 'montserrat',
      ),
      home: SignInScreen(),
      routes: routes,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => UnknownRouteScreen(),
        );
      },
    );
  }
}
