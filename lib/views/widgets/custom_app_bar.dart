import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontSize: getProportinateScreenWidth(8),
        ),
      ),
      leading: GestureDetector(
        child: const Icon(Icons.keyboard_arrow_left),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
