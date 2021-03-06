import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'message_model.dart';

class MessageData extends ChangeNotifier{
  MessageModel post = MessageModel();

  List<dynamic> _messages = [];

  UnmodifiableListView<dynamic> get messages {
    return UnmodifiableListView(_messages);
  }

  int get postCount {
    return _messages.length;
  }

  Future<dynamic> getMessages(BuildContext context) async {
    _messages = await post.getMessages(context);
    notifyListeners();
  }
}