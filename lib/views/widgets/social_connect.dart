import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialConnect extends StatelessWidget {
  const SocialConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          tap: () {},
          socialSvg: "assets/icons/google-icon.svg",
        ),
        SocialIcon(
          tap: () {},
          socialSvg: "assets/icons/facebook-2.svg",
        ),
        SocialIcon(
          tap: () {},
          socialSvg: "assets/icons/twitter.svg",
        ),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String socialSvg;
  final Function() tap;
  const SocialIcon({
    super.key,
    required this.tap,
    required this.socialSvg,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 42,
        height: 42,
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 247, 247),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          socialSvg,
          height: getProportinateScreenHeight(20),
          width: getProportinateScreenWidth(20),
        ),
      ),
    );
  }
}
