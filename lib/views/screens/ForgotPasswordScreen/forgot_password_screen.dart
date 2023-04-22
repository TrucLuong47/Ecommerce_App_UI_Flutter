import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/constant/validation.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_app_bar.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: 'Forgot Password'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Forgot Password?',
                    style: headingStyle,
                  ),
                  Text(
                    'Please enter your email and we will send \nyou a link to return to your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportinateScreenWidth(8),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.15,
                  ),
                  const ForgotPasswordForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          CustomTextField(
            inputType: TextInputType.emailAddress,
            labelText: 'Email',
            hintText: 'Enter your email',
            validator: (value) {
              if (value!.isEmpty) {
                return emptyEmail;
              } else if (!validator.email(value)) {
                return unvalidEmail;
              }
              return null;
            },
            suffixIcon: Icons.email_outlined,
            isRequired: false,
            autofocus: true,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: 'Continue',
              press: () {
                if (formKey.currentState!.validate()) {
                  const SnackBar(
                    content: Text('Continue'),
                  );
                }
              },
              borderRadius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
