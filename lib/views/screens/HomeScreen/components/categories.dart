import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/Flash Icon.svg', 'name': 'Flash Deal'},
      {'icon': 'assets/icons/Bill Icon.svg', 'name': 'Bill'},
      {'icon': 'assets/icons/Game Icon.svg', 'name': 'Game'},
      {'icon': 'assets/icons/Gift Icon.svg', 'name': 'Daily Gift'},
      {'icon': 'assets/icons/Discover.svg', 'name': 'More'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          categories.length,
          (index) => CategoryCard(
            svgCard: categories[index]['icon'],
            nameCard: categories[index]['name'],
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String svgCard;
  final String nameCard;
  final void Function() onTap;
  const CategoryCard({
    super.key,
    required this.svgCard,
    required this.nameCard,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Container(
            height: getProportinateScreenWidth(22.5),
            width: getProportinateScreenWidth(22.5),
            decoration: BoxDecoration(
              color: AppColor.kPrimaryLightColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(svgCard),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.007,
          ),
          Text(
            nameCard,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getProportinateScreenWidth(7),
            ),
          ),
        ],
      ),
    );
  }
}
