import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/cart_provider.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return cartProvider.cartItem.isEmpty
        ? SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Nothing in here :(('),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 156, 121),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Search now!',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                itemCount: cartProvider.cartItem.length,
                itemBuilder: (BuildContext context, int index) => Dismissible(
                  key: Key(cartProvider.cartItem[index].product.id.toString()),
                  onDismissed: (direction) {
                    cartProvider.decreasePrice(index);
                    cartProvider.removeItem(index);
                    showSnackBar(
                      context,
                      "Successfully removed from your cart",
                      Icons.remove_rounded,
                      Colors.red,
                    );
                  },
                  direction: DismissDirection.endToStart,
                  background: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 197, 197),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset("assets/icons/Trash.svg"),
                      ],
                    ),
                  ),
                  child: SingleCartItem(
                    product: cartProvider.cartItem[index].product,
                    numOfItem: cartProvider.cartItem[index].numOfItem,
                  ),
                ),
              ),
            ),
          );
  }
}

class SingleCartItem extends StatelessWidget {
  final Product product;
  final int numOfItem;
  const SingleCartItem({
    super.key,
    required this.product,
    required this.numOfItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportinateScreenHeight(120),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: SizeConfig.screenWidth! * 0.25,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: AppColor.kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: AspectRatio(
              aspectRatio: 0.9,
              child: Image.asset(
                product.images[0],
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: headingStyle.copyWith(
                    fontSize: getProportinateScreenWidth(8),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.005,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$${product.price.toString()}",
                      style: priceStyle.copyWith(
                        fontSize: getProportinateScreenWidth(8),
                      ),
                    ),
                    Text(' x $numOfItem'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
