import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/views/screens/SignUpScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MoveToSignUp extends StatelessWidget {
  const MoveToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Don't have an account? "),
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, SignUpScreen.routeName);
          },
          child: const Text(
            "Sign up",
            style: TextStyle(color: AppColor.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
