import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoInternetConnection extends StatelessWidget {
  static const String id = 'no_internet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage('images/network'),
              width: 200.0,
              height: 200.0,
            ),
            Text('No Internet Connection 🤬')
          ],
        ),
      ),
    );
  }
}
