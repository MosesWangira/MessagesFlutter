import 'package:flutter/cupertino.dart';
import 'package:messages_flutter/controller/services/network.dart';
import 'package:messages_flutter/utilities/constants.dart';

class MessageModel {
  Future<dynamic> getMessages(BuildContext context) async {
    NetworkHelper networkHelper = NetworkHelper(Uri.parse('$baseUrl/posts'));
    return await networkHelper.getData(context);
  }
}
