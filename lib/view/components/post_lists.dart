import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:messages_flutter/view/components/post_item.dart';
import 'package:provider/provider.dart';

class PostLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MessageData>(builder: (context, messageData, child) {
      return AnimationLimiter(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final messageList = messageData.messages[index];
            //construct single post item here
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 2000),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: PostItem(
                    id: messageList['id'].toString(),
                    userId: messageList['userId'].toString(),
                    title: messageList['title'],
                    body: messageList['body'],
                  ),
                ),
              ),
            );
          },
          itemCount: messageData.postCount,
        ),
      );
    });
  }
}

