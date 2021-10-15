import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:messages_flutter/utilities/colors.dart';
import 'package:messages_flutter/view/screens/home.dart';
import 'package:provider/provider.dart';

class Loading extends StatefulWidget {
  static const String id = 'loading_screen';

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    getPosts();
  }

  void getPosts() async {
    await Provider.of<MessageData>(context, listen: false).getMessages(context);
    Navigator.popAndPushNamed(context, Home.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
