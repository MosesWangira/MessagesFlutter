import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messages_flutter/utilities/constants.dart';

class PostItem extends StatelessWidget {
  final String userId;
  final String id;
  final String title;
  final String body;

  PostItem(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'UserId : $userId',
                style: kTempTextStyle,
                textAlign: TextAlign.start,
              ),
              Text('id : $id',
                  style: kTempTextStyle, textAlign: TextAlign.start),
              Text('title : $title',
                  style: kTempTextStyleBold, textAlign: TextAlign.start),
              Text(body, style: kTempTextStyle, textAlign: TextAlign.start),
            ],
          ),
        ),
      ),
    );
  }
}