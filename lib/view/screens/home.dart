import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/MessageLists.dart';

class Home extends StatelessWidget {
  static const String id = 'home_id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messages'), automaticallyImplyLeading: false),
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
