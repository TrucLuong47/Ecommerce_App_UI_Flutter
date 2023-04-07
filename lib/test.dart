import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/icon_btn_with_counter.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/search_bar.dart';
import 'package:flutter/material.dart';

class ScrollAppBar extends StatefulWidget {
  const ScrollAppBar({super.key});

  @override
  State<ScrollAppBar> createState() => _ScrollAppBarState();
}

class _ScrollAppBarState extends State<ScrollAppBar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: <Widget>[
            //     SearchBar(
            //       boxColor: AppColor.kSecondaryColor.withOpacity(0.1),
            //     ),
            //     IconBtnWithCounter(
            //       svgPicPath: "assets/icons/Shopping-cart.svg",
            //       numOfItem: 1,
            //       onTap: () {},
            //       iconColor: AppColor.kPrimaryColor,
            //     ),
            //     IconBtnWithCounter(
            //       svgPicPath: "assets/icons/Bell-notification.svg",
            //       numOfItem: 4,
            //       onTap: () {},
            //       iconColor: AppColor.kPrimaryColor,
            //     ),
            //   ],
            // ),
            pinned: true,
            expandedHeight: getProportinateScreenWidth(35),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              background: Container(
                decoration: const BoxDecoration(
                    gradient: AppColor.kPrimaryGradientColor),
                child: Container(
                  padding: const EdgeInsets.only(top: 22, left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const SearchBar(
                        boxColor: Colors.white,
                      ),
                      IconBtnWithCounter(
                        svgPicPath: "assets/icons/Shopping-cart.svg",
                        numOfItem: 1,
                        onTap: () {},
                        iconColor: Colors.white,
                      ),
                      IconBtnWithCounter(
                        svgPicPath: "assets/icons/Bell-notification.svg",
                        numOfItem: 4,
                        onTap: () {},
                        iconColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item ${index + 1}'),
              ),
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
