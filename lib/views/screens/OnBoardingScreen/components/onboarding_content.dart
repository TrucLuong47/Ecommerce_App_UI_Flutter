import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  final String text, image;
  const OnBoardingContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'ECOM',
          style: TextStyle(
            fontSize: getProportinateScreenWidth(20),
            color: AppColor.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportinateScreenWidth(8),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportinateScreenHeight(285),
          width: getProportinateScreenWidth(235),
        ),
      ],
    );
  }
}
