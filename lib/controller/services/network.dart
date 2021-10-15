import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:messages_flutter/view/screens/no_internet.dart';

import 'custom_exception.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final Uri url;

  Future getData(BuildContext context) async {
    try {
      http.Response response = await http.get(url);

      switch (response.statusCode) {
        case 200:
          return jsonDecode(response.body);
        case 400:
          throw BadRequestException(response.body.toString());
        case 401:
          //navigate to login screen if app has one
          throw UnauthorisedException(response.body.toString());
        case 403:
          throw UnauthorisedException(response.body.toString());
        case 500:
        default:
          throw FetchDataException(
              'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
      }
    }on SocketException{
      //show no internet screen if socket connection error
      Navigator.pushNamed(context, NoInternetConnection.id);
      return Future.error('No Internet connection 😑');
    }on FormatException {
      return Future.error('Bad response format 👎');
    }
    on Exception {
      //other exceptions
      return Future.error('Unexpected error 😢');
    }
  }
}
