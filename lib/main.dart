import 'package:ecommerce_app_flutter/constant/routes.dart';
import 'package:ecommerce_app_flutter/constant/theme.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/models/favorite_provider.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/bottom_nav_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Ecom',
        theme: theme(),
        debugShowCheckedModeBanner: false,
        initialRoute: BottomNavBar.routeName,
        routes: route,
      ),
    );
  }
}
