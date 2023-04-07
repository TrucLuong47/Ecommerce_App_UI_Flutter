import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/home_body.dart';
import 'package:ecommerce_app_flutter/views/screens/HomeScreen/components/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: HomeAppBar(
          elevation: elevation,
        ),
        body: HomeBody(
          scrollController: scrollController,
        ),
      ),
    );
  }
}
