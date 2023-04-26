import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/views/screens/CartScreen/cart_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/icon_btn_with_counter.dart';
import 'package:ecommerce_app_flutter/views/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                searchBarWidth: 0.65,
                hintText: 'Search Product',
              ),
              Consumer<CartProvider>(
                builder: (context, cartProvider, child) {
                  return IconBtnWithCounter(
                    svgPicPath: "assets/icons/Shopping-cart.svg",
                    iconColor: AppColor.kPrimaryColor,
                    onTap: () {
                      Navigator.pushNamed(context, CartScreen.routeName);
                    },
                    numOfItem: cartProvider.cartItem.length,
                  );
                },
              ),
              IconBtnWithCounter(
                svgPicPath: "assets/icons/Bell-notification.svg",
                onTap: () {},
                iconColor: AppColor.kPrimaryColor,
                numOfItem: 0,
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
