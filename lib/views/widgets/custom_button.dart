import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final double borderRadius;
  final Color fgColor;
  final Color bgColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
    required this.borderRadius,
    required this.fgColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          foregroundColor: fgColor,
          backgroundColor: bgColor,
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
