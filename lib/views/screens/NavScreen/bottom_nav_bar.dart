import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/FavoriteScreen/favorite_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/home_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/MessageScreen/message_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/ProfileScreen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  static String routeName = "/nav";
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  final PageController pageController = PageController(initialPage: 0);

  final List<Widget> screensList = <Widget>[
    const HomeScreen(),
    const FavoriteScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: PageView(
          controller: pageController,
          children: screensList,
          onPageChanged: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              color: selectedIndex == 0
                  ? AppColor.kPrimaryColor
                  : AppColor.kSecondaryColor.withOpacity(0.4),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: selectedIndex == 1
                  ? AppColor.kPrimaryColor
                  : AppColor.kSecondaryColor.withOpacity(0.4),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: selectedIndex == 2
                  ? AppColor.kPrimaryColor
                  : AppColor.kSecondaryColor.withOpacity(0.4),
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: selectedIndex == 3
                  ? AppColor.kPrimaryColor
                  : AppColor.kSecondaryColor.withOpacity(0.4),
            ),
            label: 'Profile',
          ),
        ],
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          });
        },
      ),
    );
  }
}
