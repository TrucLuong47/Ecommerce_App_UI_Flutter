import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: getProportinateScreenWidth(100),
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              fontSize: getProportinateScreenWidth(8),
              color: Colors.black,
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
}
