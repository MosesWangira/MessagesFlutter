import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MessageLists.dart';

class Home extends StatelessWidget {
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
