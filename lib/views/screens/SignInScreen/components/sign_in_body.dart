import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/SignInScreen/components/move_to_sign_up.dart';
import 'package:ecommerce_app_flutter/views/screens/SignInScreen/components/sign_in_form.dart';
import 'package:ecommerce_app_flutter/views/widgets/social_connect.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome Back',
                style: headingStyle,
              ),
              Text(
                'Sign in with your email and password \nor continue with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportinateScreenWidth(8),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              const SignInForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              const Text("- Or connect with -"),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              const SocialConnect(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),
              const MoveToSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
