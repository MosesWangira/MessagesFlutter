import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'custom_exception.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final Uri url;

  Future getData() async {
    try {
      http.Response response = await http.get(url);

      switch (response.statusCode) {
        case 200:
          return jsonDecode(response.body);
        case 400:
          throw BadRequestException(response.body.toString());
        case 401:
          throw UnauthorisedException(response.body.toString());
        case 403:
          //kill app if no connection for now
          if(Platform.isAndroid){
            SystemNavigator.pop();
          }else if (Platform.isIOS){
            exit(0);
          }
          throw UnauthorisedException(response.body.toString());
        case 500:
        default:
          throw FetchDataException(
              'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
      }
    }on SocketException{
      //show no internet screen if socket connection error
      return Future.error('No Internet connection 😑');
    }
    on Exception {
      //other exceptions
      return Future.error('Unexpected error 😢');
    }
  }
}
