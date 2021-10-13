import 'package:flutter/material.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:messages_flutter/view/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApplication());


class MyApplication extends StatelessWidget {

  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageData>(
      create: (context) => MessageData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

