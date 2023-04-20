import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/widgets/product_rating.dart';
import 'package:ecommerce_app_flutter/views/widgets/rounded_icon_btn.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSize {
  final String rate;
  final double elevation;
  const DetailsAppBar({super.key, required this.rate, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF5F6F9),
      elevation: elevation,
      child: SafeArea(
        child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: <Widget>[
              RoundedIconBtn(
                icon: Icons.keyboard_arrow_left,
                onTap: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
                btnSize: getProportinateScreenWidth(20),
                iconSize: getProportinateScreenWidth(12),
              ),
              const Spacer(),
              ProductRating(
                rate: rate,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 150);

  @override
  Widget get child => throw UnimplementedError();
}
