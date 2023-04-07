import 'package:ecommerce_app_flutter/views/screens/SignUpScreen/components/sign_up_body.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: 'Sign Up'),
        ),
        body: SignUpBody(),
      ),
    );
  }
}
