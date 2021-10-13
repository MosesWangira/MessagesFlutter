import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messages_flutter/view/components/single_post_Item.dart';

class MessageItem extends StatelessWidget {
  final String userId;
  final String id;
  final String title;
  final String body;

  MessageItem(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        elevation: 5.0,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
          child: SinglePostItem(userId: userId, id: id, title: title, body: body),
        ),
      ),
    );
  }
}
