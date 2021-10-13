import 'package:flutter/cupertino.dart';
import 'package:messages_flutter/view/components/MessageItem.dart';

class MessageLists extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return MessageItem();
        },
      itemCount: 23,
    );
  }
}
