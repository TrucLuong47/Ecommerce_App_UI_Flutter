import 'package:ecommerce_app_flutter/views/screens/CartScreen/components/cart_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/CartScreen/components/cart_body.dart';
import 'package:ecommerce_app_flutter/views/screens/CartScreen/components/cart_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CartAppBar(),
      body: CartBody(),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
