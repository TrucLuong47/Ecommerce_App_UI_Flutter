import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final void Function() onTap;
  final Color bgColor;
  final Color iconColor;
  const LikeButton({
    super.key,
    required this.onTap,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        height: getProportinateScreenWidth(14),
        width: getProportinateScreenWidth(14),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.favorite,
          color: iconColor,
          size: getProportinateScreenWidth(8),
        ),
      ),
    );
  }
}
