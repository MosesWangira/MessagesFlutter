import 'package:flutter/cupertino.dart';
import 'package:messages_flutter/utilities/constants.dart';

class SinglePostItem extends StatelessWidget {
  const SinglePostItem({
    Key? key,
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String userId;
  final String id;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}