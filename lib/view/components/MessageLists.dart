import 'package:flutter/cupertino.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:messages_flutter/view/components/MessageItem.dart';
import 'package:provider/provider.dart';

class MessageLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MessageData>(builder: (context, messageData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final messageList = messageData.messages[index];
          //construct single post item here
          return MessageItem(messageList);
        },
        itemCount: messageData.postCount,
      );
    });
  }
}