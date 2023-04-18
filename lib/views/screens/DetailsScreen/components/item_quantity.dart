import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/widgets/rounded_icon_btn.dart';
import 'package:flutter/material.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({super.key});

  @override
  State<ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RoundedIconBtn(
          icon: Icons.remove,
          color: AppColor.kSecondaryColor.withOpacity(0.1),
          onTap: () {
            if (count > 1) {
              setState(() {
                count = count - 1;
              });
            }
          },
          btnSize: getProportinateScreenWidth(17),
          iconSize: getProportinateScreenWidth(10),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            count.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportinateScreenWidth(8),
            ),
          ),
        ),
        RoundedIconBtn(
          icon: Icons.add,
          color: AppColor.kSecondaryColor.withOpacity(0.1),
          onTap: () {
            setState(() {
              count = count + 1;
            });
          },
          btnSize: getProportinateScreenWidth(17),
          iconSize: getProportinateScreenWidth(10),
        ),
      ],
    );
  }
}
