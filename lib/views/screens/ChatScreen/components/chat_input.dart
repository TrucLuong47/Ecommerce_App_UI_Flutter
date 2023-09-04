import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/chat_model.dart';
import 'package:ecommerce_app_flutter/models/message_model.dart';
import 'package:ecommerce_app_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  final Chat chat;
  final User user;
  const ChatInput({
    super.key,
    required this.chat,
    required this.user,
  });

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: getProportinateScreenHeight(150),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: getProportinateScreenWidth(6.5),
            ),
            child: const Icon(
              Icons.menu_rounded,
              color: AppColor.kPrimaryColor,
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.03,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: _textEditingController,
                minLines: 1,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                style: TextStyle(
                  fontSize: getProportinateScreenWidth(8),
                ),
                cursorColor: AppColor.kPrimaryColor,
                decoration: InputDecoration(
                  hintText: 'Type here ...',
                  hintStyle: TextStyle(
                    fontSize: getProportinateScreenWidth(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: getProportinateScreenWidth(5),
                    horizontal: getProportinateScreenWidth(10),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.05,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: getProportinateScreenWidth(6.5),
            ),
            child: GestureDetector(
              onTap: () {
                Message newMessage = Message(
                  senderId: '1',
                  recipientId: widget.user.id,
                  text: _textEditingController.text,
                  createdAt: DateTime.now(),
                );
                List<Message> cloneMessages = List.from(widget.chat.messages)
                  ..insert(0, newMessage);
                setState(() {
                  // ignore: unused_local_variable
                  Chat chat = widget.chat.copyWith(messages: cloneMessages);
                });
              },
              child: const Icon(
                Icons.send_rounded,
                color: AppColor.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
