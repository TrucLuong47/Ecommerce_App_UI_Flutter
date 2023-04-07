import 'package:ecommerce_app_flutter/views/screens/SignInScreen/components/sign_in_body.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: 'Sign In'),
        ),
        body: SignInBody(),
      ),
    );
  }
}
