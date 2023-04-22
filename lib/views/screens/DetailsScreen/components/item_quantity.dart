import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/views/widgets/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({super.key});

  @override
  State<ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  @override
  Widget build(BuildContext context) {
    final numOfItemProvider = Provider.of<CartProvider>(context);
    final changeNumOfItem = Provider.of<CartProvider>(context, listen: false);
    return Row(
      children: <Widget>[
        RoundedIconBtn(
          icon: Icons.remove,
          color: AppColor.kSecondaryColor.withOpacity(0.1),
          onTap: () {
            if (numOfItemProvider.numOfItem > 1) {
              changeNumOfItem.decreaseNumOfItem();
            }
          },
          btnSize: getProportinateScreenWidth(17),
          iconSize: getProportinateScreenWidth(10),
        ),
        Consumer<CartProvider>(builder: (context, cartProvider, child) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              cartProvider.numOfItem.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportinateScreenWidth(8),
              ),
            ),
          );
        }),
        RoundedIconBtn(
          icon: Icons.add,
          color: AppColor.kSecondaryColor.withOpacity(0.1),
          onTap: () {
            changeNumOfItem.increaseNumOfItem();
          },
          btnSize: getProportinateScreenWidth(17),
          iconSize: getProportinateScreenWidth(10),
        ),
      ],
    );
  }
}
