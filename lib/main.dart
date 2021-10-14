import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messages_flutter/model/message_data.dart';
import 'package:messages_flutter/utilities/colors.dart';
import 'package:messages_flutter/view/screens/home.dart';
import 'package:messages_flutter/view/screens/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApplication());
}


class MyApplication extends StatelessWidget {

  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageData>(
      create: (context) => MessageData(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: primaryColor
        ),
        debugShowCheckedModeBanner: false,
        //theme: ThemeData.dark(),
        initialRoute: Loading.id,
        routes: {
          Loading.id : (context) =>  Loading(),
          Home.id : (context) =>  Home(),
        },
      ),
    );
  }
}

