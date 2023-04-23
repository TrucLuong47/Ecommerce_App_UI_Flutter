import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/SignInScreen/sign_in_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/OnBoardingScreen/components/onboarding_content.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final _pageController = PageController(initialPage: 0);
  bool isLastPage = false;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Ecom, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help people connect with store \naround Viet Nam",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust start at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
                child: Align(
                  alignment: const Alignment(0.8, 0.2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: getProportinateScreenWidth(9),
                        color: AppColor.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.55,
                child: PageView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() => isLastPage = (index == 2));
                  },
                  controller: _pageController,
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    text: splashData[index]["text"].toString(),
                    image: splashData[index]["image"].toString(),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.31,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: getProportinateScreenHeight(40),
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: splashData.length,
                      effect: const ExpandingDotsEffect(
                        spacing: 4,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: AppColor.kTextColor,
                        activeDotColor: AppColor.kPrimaryColor,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    isLastPage
                        ? AnimatedContainer(
                            width: SizeConfig.screenWidth! * 0.5,
                            duration: const Duration(milliseconds: 280),
                            child: CustomButton(
                              text: 'Get Started!',
                              press: () {
                                Navigator.pushNamed(
                                    context, SignInScreen.routeName);
                              },
                              borderRadius: 30,
                              fgColor: Colors.white,
                              bgColor: AppColor.kPrimaryColor,
                            ),
                          )
                        : AnimatedContainer(
                            width: SizeConfig.screenWidth! * 0.3,
                            duration: const Duration(milliseconds: 280),
                            child: CustomButton(
                              text: 'Next',
                              press: () {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut);
                              },
                              borderRadius: 30,
                              fgColor: Colors.white,
                              bgColor: AppColor.kPrimaryColor,
                            ),
                          ),
                    SizedBox(
                      height: getProportinateScreenHeight(40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
