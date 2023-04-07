import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const Color kPrimaryColor = Color(0xFFFF7643);
  static const Color kPrimaryLightColor = Color(0xFFFFECDF);
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static const kSecondaryColor = Color(0xFF979797);
  static const Color kTextColor = Color(0xFF757575);
}

final headingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: getProportinateScreenWidth(13),
  color: Colors.black,
);

final otpInput = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
      vertical: getProportinateScreenHeight(18),
      horizontal: getProportinateScreenWidth(13)),
  enabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(17)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.kPrimaryColor),
    borderRadius: BorderRadius.all(Radius.circular(17)),
  ),
);
