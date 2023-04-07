import 'package:ecommerce_app_flutter/views/screens/CompleteProfileScreen/components/complete_profile_body.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(title: 'Complete Profile'),
        ),
        body: CompleteProfileBody(),
      ),
    );
  }
}
