import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight! * 0.15,
      decoration: const BoxDecoration(
        gradient: AppColor.kPrimaryGradientColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: getProportinateScreenWidth(35),
            child: Opacity(
              opacity: 0.2,
              child: SizedBox(
                height: getProportinateScreenWidth(70),
                width: getProportinateScreenWidth(160),
                child: Image.asset(
                  "assets/images/test_image_banner.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              getProportinateScreenWidth(12),
            ),
            child: Text.rich(
              TextSpan(
                text: 'A Summer Sale! \n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportinateScreenWidth(8),
                ),
                children: [
                  TextSpan(
                    text: 'Cashback 20%',
                    style: TextStyle(
                      fontSize: getProportinateScreenWidth(13),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
