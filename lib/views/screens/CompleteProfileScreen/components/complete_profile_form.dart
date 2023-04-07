import 'package:ecommerce_app_flutter/constant/validation.dart';
import 'package:ecommerce_app_flutter/views/screens/OtpScreen/components/otp_body.dart';
import 'package:ecommerce_app_flutter/views/screens/OtpScreen/otp_screen.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _numController = TextEditingController();

  @override
  void dispose() {
    _numController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          CustomTextField(
            labelText: 'First Name',
            hintText: 'Enter your first name',
            inputType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your first name';
              } else if (!nameRegex.hasMatch(value)) {
                return 'Enter valid name';
              }
              return null;
            },
            suffixIcon: Icons.people_alt_outlined,
            isRequired: true,
            autofocus: false,
          ),
          CustomTextField(
            labelText: 'Last Name',
            hintText: 'Enter your last name',
            inputType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your last name';
              } else if (!nameRegex.hasMatch(value)) {
                return 'Enter valid name';
              }
              return null;
            },
            suffixIcon: Icons.people_alt_outlined,
            isRequired: true,
            autofocus: false,
          ),
          CustomTextField(
            controller: _numController,
            labelText: 'Phone Number',
            hintText: 'Enter your phone number',
            inputType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your phone number';
              } else if (!phoneNumberRegex.hasMatch(value)) {
                return 'Enter valid phone number';
              }
              return null;
            },
            suffixIcon: Icons.phone_android_outlined,
            isRequired: true,
            autofocus: false,
          ),
          CustomTextField(
            labelText: 'Address',
            hintText: 'Enter your address',
            inputType: TextInputType.name,
            validator: (value) {
              return null;
            },
            suffixIcon: Icons.location_city_outlined,
            isRequired: false,
            autofocus: false,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: 'Continue',
              press: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(
                    context,
                    OtpScreen.routeName,
                    arguments: OtpArgument(
                      number: _numController.text.replaceRange(0, 7, '*' * 7),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
