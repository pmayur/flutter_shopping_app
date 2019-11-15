import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/cupertinoStore.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build (BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ],
    );

    return CupertinoStoreApp();
  }
}