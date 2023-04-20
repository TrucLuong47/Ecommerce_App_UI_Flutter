import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/home_screen.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessArgument {
  final String text;

  SuccessArgument({required this.text});
}

class SuccessScreen extends StatefulWidget {
  static String routeName = "/success";
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween(
      begin: -3.0,
      end: 1.0,
    ).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as SuccessArgument;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: getProportinateScreenHeight(70)),
              child: Image.asset("assets/images/success.png"),
            ),
            Text(
              arg.text,
              style: TextStyle(
                fontSize: getProportinateScreenWidth(15),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.15,
            ),
            FadeTransition(
              opacity: _animation,
              child: SizedBox(
                width: SizeConfig.screenWidth! * 0.8,
                child: CustomButton(
                  text: 'Back to home',
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
