import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatefulWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
