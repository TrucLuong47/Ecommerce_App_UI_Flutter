import 'package:ecommerce_app_flutter/views/screens/CartScreen/cart_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/CompleteProfileScreen/complete_profile_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/details_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/ForgotPasswordScreen/forgot_password_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/FavoriteScreen/favorite_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/home_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/bottom_nav_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/OtpScreen/otp_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/SignInScreen/sign_in_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/SignUpScreen/sign_up_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/SuccessScreen/success_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> route = {
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  SuccessScreen.routeName: (context) => const SuccessScreen(),
  BottomNavBar.routeName: (context) => const BottomNavBar(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
};
