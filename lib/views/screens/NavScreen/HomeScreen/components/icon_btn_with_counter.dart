import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgPicPath;
  final int numOfItem;
  final Color iconColor;
  final void Function() onTap;
  const IconBtnWithCounter({
    super.key,
    required this.svgPicPath,
    required this.numOfItem,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        InkWell(
          highlightColor: Colors.white,
          borderRadius: BorderRadius.circular(30),
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(
              getProportinateScreenWidth(3),
            ),
            width: getProportinateScreenWidth(20),
            height: getProportinateScreenWidth(20),
            decoration: BoxDecoration(
              // color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.asset(
              svgPicPath,
              color: iconColor,
            ),
          ),
        ),
        Positioned(
          top: 1,
          right: 3,
          child: Container(
            height: getProportinateScreenWidth(7),
            width: getProportinateScreenWidth(7),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            alignment: Alignment.center,
            child: Text(
              numOfItem.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportinateScreenWidth(4),
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
