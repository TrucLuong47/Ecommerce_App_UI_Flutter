import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/details_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as DetailsArgument;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: DetailsAppBar(
        rate: arg.product.rating.toString(),
      ),
      body: DetailsBody(
        product: arg.product,
      ),
    );
  }
}

class DetailsArgument {
  final Product product;

  DetailsArgument({required this.product});
}
