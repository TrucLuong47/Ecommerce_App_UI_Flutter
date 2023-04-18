import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsBottomAppBar extends StatelessWidget {
  const DetailsBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColor.kSecondaryColor.withOpacity(0.3),
        ),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CustomButton(
            onTap: () {},
            bgColor: Colors.white,
            width: SizeConfig.screenWidth! * 0.15,
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: AppColor.kPrimaryColor,
              ),
            ),
          ),
          CustomButton(
            onTap: () {},
            bgColor: Colors.white,
            width: SizeConfig.screenWidth! * 0.15,
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/Shopping-cart.svg",
                color: AppColor.kPrimaryColor,
              ),
            ),
          ),
          CustomButton(
            onTap: () {},
            bgColor: AppColor.kPrimaryColor,
            width: SizeConfig.screenWidth! * 0.55,
            child: Center(
              child: Text(
                'Buy now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportinateScreenWidth(8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final Color bgColor;
  final double width;
  final Widget child;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.bgColor,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
            ),
          ],
        ),
        width: width,
        height: SizeConfig.screenWidth! * 0.15,
        child: child,
      ),
    );
  }
}
