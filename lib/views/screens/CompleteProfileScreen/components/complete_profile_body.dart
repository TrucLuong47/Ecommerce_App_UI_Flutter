import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/CompleteProfileScreen/components/complete_profile_form.dart';
import 'package:flutter/material.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

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
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your profile so we can \nget to know you better',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportinateScreenWidth(8),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              const CompleteProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
