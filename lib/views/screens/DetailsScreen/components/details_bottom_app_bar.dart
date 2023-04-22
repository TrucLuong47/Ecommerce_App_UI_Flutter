import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class DetailsBottomAppBar extends StatelessWidget {
  final Product product;
  const DetailsBottomAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Ink(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -1),
            blurRadius: 20,
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CustomButton(
            onTap: () {},
            bgColor: Colors.white,
            width: SizeConfig.screenWidth! * 0.15,
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: AppColor.kPrimaryColor,
              ),
            ),
          ),
          CustomButton(
            onTap: () {
              if (cartProvider.isExist(product)) {
                cartProvider.sum(cartProvider.numOfItem);
                cartProvider.cartItem[1].numOfItem += cartProvider.numOfItem;
              } else {
                cartProvider.cartItem.add(
                  Cart(product: product, numOfItem: cartProvider.numOfItem),
                );
              }

              // cartProvider.clearCartItem();
              print(cartProvider.cartItem);
            },
            bgColor: Colors.white,
            width: SizeConfig.screenWidth! * 0.15,
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/Shopping-cart.svg",
                color: AppColor.kPrimaryColor,
              ),
            ),
          ),
          CustomButton(
            onTap: () {},
            bgColor: AppColor.kPrimaryColor,
            width: SizeConfig.screenWidth! * 0.55,
            child: Center(
              child: Text(
                'Buy now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportinateScreenWidth(8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final Color bgColor;
  final double width;
  final Widget child;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.bgColor,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
            ),
          ],
        ),
        width: width,
        height: SizeConfig.screenWidth! * 0.15,
        child: child,
      ),
    );
  }
}
