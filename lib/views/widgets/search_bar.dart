import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Color boxColor;
  final double searchBarWidth;
  final String hintText;
  const SearchBar(
      {super.key,
      required this.boxColor,
      required this.searchBarWidth,
      required this.hintText});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final FocusNode searchFocusNode = FocusNode();
  static Color searchIcon = AppColor.kTextColor;
  @override
  void initState() {
    searchFocusNode.addListener(() {
      setState(() {
        searchIcon = searchFocusNode.hasFocus
            ? AppColor.kPrimaryColor
            : AppColor.kTextColor;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * widget.searchBarWidth,
      height: getProportinateScreenWidth(20),
      decoration: BoxDecoration(
        color: widget.boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: getProportinateScreenWidth(7),
        ),
        textAlign: TextAlign.justify,
        focusNode: searchFocusNode,
        cursorColor: AppColor.kPrimaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportinateScreenWidth(20),
            vertical: getProportinateScreenWidth(6.7),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 19,
            color: searchIcon,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: getProportinateScreenWidth(7)),
        ),
      ),
    );
  }
}
