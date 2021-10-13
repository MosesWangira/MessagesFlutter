import 'package:flutter/material.dart';
import 'package:messages_flutter/view/screens/home.dart';

void main() => runApp(MyApplication());


class MyApplication extends StatelessWidget {

  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

