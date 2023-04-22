import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/constant/validation.dart';
import 'package:ecommerce_app_flutter/views/screens/ForgotPasswordScreen/forgot_password_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/SuccessScreen/success_screen.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_password_field.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your email',
            inputType: TextInputType.emailAddress,
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
            autofocus: false,
          ),
          ShowHidePasswordField(
            labelText: 'Password',
            hintText: 'Enter your password',
            validator: (value) {
              if (value!.isEmpty) {
                return emptyPwd;
              } else if (!validator.mediumPassword(value)) {
                return weakPwd;
              }
              return null;
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.002,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Checkbox(
                      value: rememberMe,
                      onChanged: (check) {
                        setState(() {
                          rememberMe = !rememberMe;
                        });
                      },
                      activeColor: AppColor.kPrimaryColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: getProportinateScreenWidth(7),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: getProportinateScreenWidth(7),
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.03,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: 'Continue',
              press: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(
                    context,
                    SuccessScreen.routeName,
                    arguments: SuccessArgument(text: 'Login Successful'),
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
