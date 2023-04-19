import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const SectionTitle({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getProportinateScreenWidth(9),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text('See More'),
        ),
      ],
    );
  }
}
