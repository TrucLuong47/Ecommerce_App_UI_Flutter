import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/details_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/FavoriteScreen/components/favorite_body.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/home_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/product_card.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  ScrollController scrollController = ScrollController();
  double elevation = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.offset > 100) {
        setState(() {
          elevation = 3;
        });
      } else {
        setState(() {
          elevation = 0;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        elevation: elevation,
      ),
      body: const FavoriteBody(),
    );
  }
}
