import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/chat_model.dart';
import 'package:ecommerce_app_flutter/models/message_model.dart';
import 'package:ecommerce_app_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatefulWidget {
  final Chat chat;
  final User user;
  final Function(Chat) onTap;
  const ChatBody(
      {super.key, required this.chat, required this.user, required this.onTap});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///////////////////////// Chat Message
        Expanded(
          child: ListView.builder(
              reverse: true,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.chat.messages.length,
              itemBuilder: (context, index) {
                Message message = widget.chat.messages[index];
                bool isMe = message.senderId == '1';
                return Align(
                  alignment:
                      isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: SizeConfig.screenWidth! * 0.66,
                    ),
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: isMe
                            ? AppColor.kPrimaryColor
                            : AppColor.kSecondaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: isMe
                        ? Text(
                            message.text,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                          )
                        : Text(
                            message.text,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                          ),
                  ),
                );
              }),
        ),
        ///////////////////////// Chat Input
        Container(
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
                    List<Message> cloneMessages =
                        List.from(widget.chat.messages)..insert(0, newMessage);
                    widget.onTap(widget.chat.copyWith(messages: cloneMessages));
                    _textEditingController.clear();
                  },
                  child: const Icon(
                    Icons.send_rounded,
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
