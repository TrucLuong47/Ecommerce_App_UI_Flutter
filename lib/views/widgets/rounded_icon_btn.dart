import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  const RoundedIconBtn({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        height: getProportinateScreenWidth(20),
        width: getProportinateScreenWidth(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon),
      ),
    );
  }
}
