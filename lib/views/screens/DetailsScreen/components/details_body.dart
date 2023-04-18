import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/color_select.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/item_quantity.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/product_description.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/preview.dart';

import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final ScrollController scrollController;
  final Product product;
  const DetailsBody(
      {super.key, required this.product, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight! * 0.35,
              child: Preview(product: product),
            ),
            ProductDescription(
              product: product,
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Ink(
              padding: const EdgeInsets.only(left: 15, right: 25),
              height: SizeConfig.screenHeight! * 0.1,
              width: SizeConfig.screenWidth! * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ColorSelect(
                    product: product,
                  ),
                  const Spacer(),
                  const ItemQuantity(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
