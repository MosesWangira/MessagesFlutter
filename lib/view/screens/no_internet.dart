import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messages_flutter/utilities/colors.dart';
import 'package:messages_flutter/utilities/constants.dart';
import 'package:messages_flutter/view/screens/loading.dart';

class NoInternetConnection extends StatelessWidget {
  static const String id = 'no_internet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Check Your Internet Connection\nNo Internet Connection 🤺',
              style: kTempTextStyleBoldLarge,
              textAlign: TextAlign.center,
            ),

            Image(image: AssetImage('images/internet.jpg')),
            Card(
              color: primaryColor,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(onPressed: () {
                Navigator.pushNamed(context, Loading.id);
              }, child: Text('Retry', style: TextStyle(
                color: Colors.white,
              ),)),
            )
          ],
        ),
      ),
    );
  }
}
