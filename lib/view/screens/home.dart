import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:provider/provider.dart';

import '../components/MessageLists.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<MessageData>(context, listen: false).getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: MessageLists(),
            ),
          )
        ],
      ),
    );
  }
}
