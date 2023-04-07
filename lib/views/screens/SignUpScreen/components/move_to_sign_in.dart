import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/views/screens/SignInScreen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class MoveToSignIn extends StatelessWidget {
  const MoveToSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Already have an account? "),
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, SignInScreen.routeName);
          },
          child: const Text(
            "Sign in",
            style: TextStyle(color: AppColor.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
