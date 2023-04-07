import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/icon_btn_with_counter.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/search_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSize {
  final double elevation;

  const HomeAppBar({super.key, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: SafeArea(
        child: AnimatedContainer(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          duration: const Duration(milliseconds: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SearchBar(
                boxColor: AppColor.kSecondaryColor.withOpacity(0.1),
              ),
              IconBtnWithCounter(
                svgPicPath: "assets/icons/Shopping-cart.svg",
                numOfItem: 1,
                iconColor: AppColor.kPrimaryColor,
                onTap: () {},
              ),
              IconBtnWithCounter(
                svgPicPath: "assets/icons/Bell-notification.svg",
                numOfItem: 4,
                onTap: () {},
                iconColor: AppColor.kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
