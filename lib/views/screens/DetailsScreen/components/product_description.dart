import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  final Product product;
  const ProductDescription({super.key, required this.product});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool _showFullText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(),
      width: SizeConfig.screenWidth! * 0.95,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.product.title,
              style: headingStyle.copyWith(
                fontSize: getProportinateScreenWidth(10),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$${widget.product.price}',
                  style: priceStyle.copyWith(
                    fontSize: getProportinateScreenWidth(7),
                    color: AppColor.kSecondaryColor,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  ' \$${(widget.product.price * 0.6).toStringAsFixed(2)}',
                  style: priceStyle.copyWith(
                    fontSize: getProportinateScreenWidth(10),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Text(
              widget.product.description,
              maxLines: _showFullText ? null : 2,
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _showFullText = !_showFullText;
                });
              },
              child: _showFullText
                  ? const Text(
                      'See Less Detail <',
                      style: TextStyle(color: AppColor.kPrimaryColor),
                    )
                  : const Text(
                      'See More Detail >',
                      style: TextStyle(color: AppColor.kPrimaryColor),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
