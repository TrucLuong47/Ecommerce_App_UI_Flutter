import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/OnBoardingScreen/components/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = "/splash";
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
