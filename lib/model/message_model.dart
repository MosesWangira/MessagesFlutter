import 'package:messages_flutter/controller/services/network.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com';

class MessageModel {
  Future<dynamic> getMessages() async {
    NetworkHelper networkHelper = NetworkHelper(Uri.parse('$baseUrl/posts'));
    return await networkHelper.getData();
  }
}
