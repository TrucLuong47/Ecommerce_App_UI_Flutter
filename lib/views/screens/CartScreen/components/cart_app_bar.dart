import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartAppBar extends StatelessWidget implements PreferredSize {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: getProportinateScreenWidth(50),
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: getProportinateScreenWidth(8),
                ),
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.005),
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) {
              return Text(
                '${cartProvider.cartItem.length} item',
                style: Theme.of(context).textTheme.bodySmall,
              );
            },
          ),
        ],
      ),
      leading: GestureDetector(
        child: const Icon(Icons.keyboard_arrow_left),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
