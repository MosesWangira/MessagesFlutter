import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final Uri url;

  Future getData() async {
    try {
      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if(response.statusCode == 400){
        return Future.error('Route not found 😑');
      }
    }on SocketException{
      return Future.error('No Internet connection 😑');
    } on FormatException {
      return Future.error('Bad response format 👎');
    } on Exception {
      return Future.error('Unexpected error 😢');
    }
  }
}
