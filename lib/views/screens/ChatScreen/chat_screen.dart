import 'package:ecommerce_app_flutter/models/chat_model.dart';
import 'package:ecommerce_app_flutter/models/user_model.dart';
import 'package:ecommerce_app_flutter/views/screens/ChatScreen/components/chat_app_bar.dart';
import 'package:ecommerce_app_flutter/views/screens/ChatScreen/components/chat_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat";
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late User user;
  late Chat chat;

  @override
  void initState() {
    user = Get.arguments[0];
    chat = Get.arguments[1];
    super.initState();
  }

  void updateChat(Chat newChat) {
    setState(() {
      chat = newChat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: ChatAppBar(
          user: user,
          currentStatus: user.currentStatus,
        ),
        body: ChatBody(
          user: user,
          chat: chat,
          onTap: updateChat,
        ),
      ),
    );
  }
}
