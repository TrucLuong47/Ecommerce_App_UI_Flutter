import 'package:ecommerce_app_flutter/views/screens/OtpScreen/components/otp_body.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OtpArgument {
  final String number;

  OtpArgument({required this.number});
}

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as OtpArgument;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: 'OTP Verification'),
      ),
      body: OtpBody(number: arg.number),
    );
  }
}
