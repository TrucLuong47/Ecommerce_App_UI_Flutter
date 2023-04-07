import 'package:ecommerce_app_flutter/constant/routes.dart';
import 'package:ecommerce_app_flutter/constant/theme.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/home_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: route,
    );
  }
}
