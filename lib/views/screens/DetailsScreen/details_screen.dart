import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/details_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/details_body.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/components/details_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = "/details";
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  ScrollController scrollController = ScrollController();
  double elevation = 0;
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.offset > 50) {
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
    final arg = ModalRoute.of(context)!.settings.arguments as DetailsArgument;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: DetailsAppBar(
        rate: arg.product.rating.toString(),
        elevation: elevation,
      ),
      body: DetailsBody(
        product: arg.product,
        scrollController: scrollController,
      ),
      bottomNavigationBar: const DetailsBottomAppBar(),
    );
  }
}

class DetailsArgument {
  final Product product;

  DetailsArgument({required this.product});
}
