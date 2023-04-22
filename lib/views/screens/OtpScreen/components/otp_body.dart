import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/OtpScreen/components/otp_form.dart';
import 'package:ecommerce_app_flutter/views/screens/OtpScreen/components/time_expired.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  final String number;
  const OtpBody({super.key, required this.number});

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
                'OTP Verification',
                style: headingStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'We sent your code to ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportinateScreenWidth(8),
                    ),
                  ),
                  Text(
                    number,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportinateScreenWidth(8),
                    ),
                  ),
                ],
              ),
              const TimeExpired(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.15,
              ),
              const OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.2,
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Continue',
                  press: () {},
                  borderRadius: 30,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColor.kTextColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
