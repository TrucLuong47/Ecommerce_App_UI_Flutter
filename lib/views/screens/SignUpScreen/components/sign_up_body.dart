import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/SignUpScreen/components/move_to_sign_in.dart';
import 'package:ecommerce_app_flutter/views/screens/SignUpScreen/components/sign_up_form.dart';
import 'package:ecommerce_app_flutter/views/widgets/social_connect.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media',
                style: TextStyle(
                  fontSize: getProportinateScreenWidth(8),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              const SocialConnect(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.01,
              ),
              Text(
                'By continuing your confirm that you agree \nwith out Term and Condition',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportinateScreenWidth(6),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              const MoveToSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
