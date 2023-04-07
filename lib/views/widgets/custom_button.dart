import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() press;
  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColor.kPrimaryColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportinateScreenWidth(8),
          ),
        ),
      ),
    );
  }
}
