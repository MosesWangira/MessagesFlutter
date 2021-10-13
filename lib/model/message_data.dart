import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'message.dart';
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

  void getMessages() async {
    _messages = await post.getMessages();
    print(_messages);
    notifyListeners();
  }
}