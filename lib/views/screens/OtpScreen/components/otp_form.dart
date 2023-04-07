import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/views/screens/SuccessScreen/success_screen.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin1FocusNode, pin2FocusNode, pin3FocusNode, pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void focusNode(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: getProportinateScreenWidth(35),
            child: TextFormField(
              focusNode: pin1FocusNode,
              onChanged: (value) {
                focusNode(value, pin2FocusNode!);
              },
              keyboardType: TextInputType.number,
              autofocus: true,
              cursorColor: AppColor.kPrimaryColor,
              style: TextStyle(fontSize: getProportinateScreenWidth(13)),
              decoration: otpInput,
            ),
          ),
          SizedBox(
            width: getProportinateScreenWidth(35),
            child: TextFormField(
              focusNode: pin2FocusNode,
              onChanged: (value) {
                focusNode(value, pin3FocusNode!);
              },
              keyboardType: TextInputType.number,
              cursorColor: AppColor.kPrimaryColor,
              style: TextStyle(fontSize: getProportinateScreenWidth(13)),
              decoration: otpInput,
            ),
          ),
          SizedBox(
            width: getProportinateScreenWidth(35),
            child: TextFormField(
              focusNode: pin3FocusNode,
              onChanged: (value) {
                focusNode(value, pin4FocusNode!);
              },
              keyboardType: TextInputType.number,
              cursorColor: AppColor.kPrimaryColor,
              style: TextStyle(fontSize: getProportinateScreenWidth(13)),
              decoration: otpInput,
            ),
          ),
          SizedBox(
            width: getProportinateScreenWidth(35),
            child: TextFormField(
              focusNode: pin4FocusNode,
              onChanged: (value) {
                focusNode(value, pin4FocusNode!);
                if (value.length == 1) {
                  Navigator.pushNamed(
                    context,
                    SuccessScreen.routeName,
                    arguments: SuccessArgument(text: 'Registration Successful'),
                  );
                }
              },
              keyboardType: TextInputType.number,
              cursorColor: AppColor.kPrimaryColor,
              style: TextStyle(fontSize: getProportinateScreenWidth(13)),
              decoration: otpInput,
            ),
          ),
        ],
      ),
    );
  }
}
