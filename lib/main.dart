import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:food_ordering_app_ui_fur_mobile_systeme/routes.dart';
import 'screens/home/home_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: 'montserrat',
      ),
      home: const HomeScreen(),
      routes: routes,
    );
  }
}
