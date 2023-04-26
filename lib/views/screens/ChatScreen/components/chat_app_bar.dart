import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatAppBar extends StatelessWidget implements PreferredSize {
  final User user;
  final bool currentStatus;
  const ChatAppBar(
      {super.key, required this.user, required this.currentStatus});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: getProportinateScreenWidth(50),
      leading: GestureDetector(
        child: const Icon(Icons.keyboard_arrow_left),
        onTap: () {
          Get.back();
        },
      ),
      title: Column(
        children: [
          Text(
            user.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            currentStatus ? 'online' : 'offline',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: currentStatus
                    ? const Color.fromARGB(255, 0, 255, 8)
                    : const Color.fromARGB(255, 255, 17, 0)),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(
            getProportinateScreenWidth(8),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(user.imageUrl),
          ),
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
