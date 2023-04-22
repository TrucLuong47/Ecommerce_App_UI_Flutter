import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/views/screens/CartScreen/cart_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/icon_btn_with_counter.dart';
import 'package:ecommerce_app_flutter/views/widgets/product_rating.dart';
import 'package:ecommerce_app_flutter/views/widgets/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSize {
  final String rate;
  final double elevation;
  const DetailsAppBar({super.key, required this.rate, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF5F6F9),
      elevation: elevation,
      child: SafeArea(
        child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedIconBtn(
                icon: Icons.keyboard_arrow_left,
                onTap: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
                btnSize: getProportinateScreenWidth(20),
                iconSize: getProportinateScreenWidth(12),
              ),
              ProductRating(
                rate: rate,
              ),
              Consumer<CartProvider>(builder: (context, cartProvider, child) {
                return IconBtnWithCounter(
                  svgPicPath: "assets/icons/Shopping-cart.svg",
                  iconColor: AppColor.kPrimaryColor,
                  onTap: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  },
                  numOfItem: cartProvider.numOfItem,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 150);

  @override
  Widget get child => throw UnimplementedError();
}
