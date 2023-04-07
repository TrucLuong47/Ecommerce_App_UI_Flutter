import 'package:ecommerce_app_flutter/views/screens/CompleteProfileScreen/complete_profile_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/details_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/ForgotPasswordScreen/forgot_password_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/home_screen.dart';
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
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};
