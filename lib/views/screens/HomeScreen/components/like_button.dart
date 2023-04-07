import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        highlightColor: Colors.white,
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        child: AnimatedContainer(
          height: getProportinateScreenWidth(14),
          width: getProportinateScreenWidth(14),
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: isFavorite
                ? AppColor.kSecondaryColor.withOpacity(0.1)
                : const Color.fromARGB(255, 255, 111, 111).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: isFavorite
              ? Icon(
                  Icons.favorite,
                  color: Colors.black.withOpacity(0.3),
                  size: getProportinateScreenWidth(8),
                )
              : Icon(
                  Icons.favorite,
                  color: Colors.pink.withOpacity(1.0),
                  size: getProportinateScreenWidth(8),
                ),
        ),
      ),
    );
  }
}
