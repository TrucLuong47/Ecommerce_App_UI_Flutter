import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double btnSize;
  final double iconSize;
  final void Function() onTap;
  const RoundedIconBtn({
    super.key,
    required this.icon,
    required this.onTap,
    required this.color,
    required this.btnSize,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Ink(
        height: btnSize,
        width: btnSize,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }
}
