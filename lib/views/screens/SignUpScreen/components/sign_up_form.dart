import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/constant/validation.dart';
import 'package:ecommerce_app_flutter/views/screens/CompleteProfileScreen/complete_profile_screen.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_password_field.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  final pwdController = TextEditingController();
  bool isVisible = true;

  @override
  void dispose() {
    pwdController.dispose();
    super.dispose();
  }

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
            controller: pwdController,
            validator: (value) {
              if (value!.isEmpty) {
                return emptyPwd;
              } else if (!validator.mediumPassword(value)) {
                return weakPwd;
              }
              return null;
            },
          ),
          DefaultPasswordField(
            labelText: 'Confirm Password',
            hintText: 'Re-enter your password',
            validator: (value) {
              if (value!.isEmpty) {
                return emptyRePwd;
              } else if (value != pwdController.text) {
                return misMatched;
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.005,
          ),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.8,
            child: CustomButton(
              text: 'Continue',
              press: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              },
              borderRadius: 30,
              fgColor: Colors.white,
              bgColor: AppColor.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
