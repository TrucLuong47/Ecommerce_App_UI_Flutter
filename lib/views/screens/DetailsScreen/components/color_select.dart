import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';

class ColorSelect extends StatefulWidget {
  final Product product;
  const ColorSelect({super.key, required this.product});

  @override
  State<ColorSelect> createState() => _ColorSelectState();
}

class _ColorSelectState extends State<ColorSelect> {
  int currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...List.generate(
          widget.product.colors.length,
          (index) => DotColor(
            color: widget.product.colors[index],
            onTap: () {
              setState(() {
                currentColor = index;
              });
            },
            isSelected: index == currentColor,
          ),
        ),
      ],
    );
  }
}

class DotColor extends StatelessWidget {
  final Color color;
  final void Function() onTap;
  final bool isSelected;
  const DotColor({
    super.key,
    required this.color,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        height: getProportinateScreenWidth(19),
        width: getProportinateScreenWidth(19),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColor.kPrimaryColor : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
