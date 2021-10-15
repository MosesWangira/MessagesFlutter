import 'package:messages_flutter/controller/services/network.dart';
import 'package:messages_flutter/utilities/constants.dart';

class MessageModel {
  Future<dynamic> getMessages() async {
    NetworkHelper networkHelper = NetworkHelper(Uri.parse('$baseUrl/posts/posts'));
    return await networkHelper.getData();
  }
}
