import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 0, 0, 0),
    ),
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: AppColor.kTextColor,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodySmall: TextStyle(color: AppColor.kTextColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: AppColor.kTextColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: AppColor.kPrimaryColor, width: 2.5),
      gapPadding: 7,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.red, width: 2.5),
      gapPadding: 7,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.red, width: 2.5),
      gapPadding: 7,
    ),
  );
}
