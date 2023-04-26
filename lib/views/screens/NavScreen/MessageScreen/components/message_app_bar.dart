import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/views/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MessageAppBar extends StatelessWidget implements PreferredSize {
  const MessageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: SearchBar(
          boxColor: AppColor.kSecondaryColor.withOpacity(0.1),
          searchBarWidth: 0.9,
          hintText: 'Search User',
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
