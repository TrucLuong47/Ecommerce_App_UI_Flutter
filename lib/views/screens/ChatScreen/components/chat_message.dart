import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/chat_model.dart';
import 'package:ecommerce_app_flutter/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final Chat chat;
  const ChatMessage({
    required this.chat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          reverse: true,
          physics: const BouncingScrollPhysics(),
          itemCount: chat.messages.length,
          itemBuilder: (context, index) {
            Message message = chat.messages[index];
            bool isMe = message.senderId == '1';
            return Align(
              alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: SizeConfig.screenWidth! * 0.66,
                ),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: isMe
                        ? AppColor.kPrimaryColor
                        : AppColor.kSecondaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: isMe
                    ? Text(
                        message.text,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                      )
                    : Text(
                        message.text,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                      ),
              ),
            );
          }),
    );
  }
}
