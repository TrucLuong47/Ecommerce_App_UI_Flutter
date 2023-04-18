import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductRating extends StatelessWidget {
  final String rate;
  const ProductRating({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportinateScreenWidth(15),
      width: getProportinateScreenWidth(30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            rate,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getProportinateScreenWidth(6.5),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: getProportinateScreenWidth(6),
            child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  "assets/icons/Star Icon.svg",
                )),
          ),
        ],
      ),
    );
  }
}
