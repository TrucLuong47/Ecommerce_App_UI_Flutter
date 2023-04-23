import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportinateScreenHeight(180),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -0.5),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: getProportinateScreenHeight(180) * 0.45,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/receipt.svg"),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.03,
                ),
                const Text('Ecom Voucher'),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      'Select or enter code',
                      style: TextStyle(color: AppColor.kSecondaryColor),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: getProportinateScreenWidth(13),
                      color: AppColor.kSecondaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: AppColor.kSecondaryColor.withOpacity(0.1),
            thickness: 1,
            height: 0,
          ),
          Container(
            height: getProportinateScreenHeight(180) * 0.55,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Total: '),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.001,
                    ),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, child) {
                        return Text(
                          '\$${cartProvider.totalPrice.toStringAsFixed(2)}',
                          style: priceStyle.copyWith(
                            fontSize: getProportinateScreenWidth(9),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Consumer<CartProvider>(
                  builder: (context, cartProvider, child) {
                    return cartProvider.cartItem.isEmpty
                        ? AbsorbPointer(
                            absorbing: true,
                            child: SizedBox(
                              width: getProportinateScreenWidth(90),
                              child: CustomButton(
                                text: 'Check out',
                                press: () {},
                                borderRadius: 20,
                                fgColor: Colors.white,
                                bgColor: AppColor.kSecondaryColor,
                              ),
                            ),
                          )
                        : SizedBox(
                            width: getProportinateScreenWidth(90),
                            child: CustomButton(
                              text: 'Check out',
                              press: () {},
                              borderRadius: 20,
                              fgColor: Colors.white,
                              bgColor: AppColor.kPrimaryColor,
                            ),
                          );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
