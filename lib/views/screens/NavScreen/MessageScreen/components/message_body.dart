import 'package:ecommerce_app_flutter/models/chat_model.dart';
import 'package:ecommerce_app_flutter/models/message_model.dart';
import 'package:ecommerce_app_flutter/models/user_model.dart';
import 'package:ecommerce_app_flutter/views/screens/ChatScreen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Chat> chats = Chat.chats;
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          User user = chats[index].users!.where((user) => user.id != '1').first;
          chats[index]
              .messages
              .sort((a, b) => b.createdAt.compareTo(a.createdAt));
          Message lastMessage = chats[index].messages.first;
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Get.toNamed(
                    ChatScreen.routeName,
                    arguments: [
                      user,
                      chats[index],
                    ],
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(user.imageUrl),
                ),
                title: Text(user.name),
                subtitle: Text(
                  lastMessage.text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                trailing: Text(
                    "${lastMessage.createdAt.hour}:${lastMessage.createdAt.minute}"),
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
              ),
            ],
          );
        });
  }
}
