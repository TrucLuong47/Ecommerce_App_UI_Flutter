import 'package:ecommerce_app_flutter/views/screens/NavScreen/MessageScreen/components/message_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/MessageScreen/components/message_body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = "/message";
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MessageAppBar(),
      body: MessageBody(),
    );
  }
}
