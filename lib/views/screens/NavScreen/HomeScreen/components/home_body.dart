import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/categories.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/discount_card.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/product_card.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/section_title.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/special_offer_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  final ScrollController scrollController;
  const HomeBody({super.key, required this.scrollController});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          controller: widget.scrollController,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  children: <Widget>[
                    const DiscountCard(),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    const Categories(),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),
                    SectionTitle(
                      title: 'Special for you',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.015,
              ),
              const SpecialOfferCard(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SectionTitle(
                  title: 'Popular product',
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.015,
              ),
              const ProductCard(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
