import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


import 'package:shopping_app/cupertinoStore.dart';
import 'models/appStateModel.dart';


void main() {
  return runApp(
  ChangeNotifierProvider<AppStateModel>(
      builder: (context) => AppStateModel()..loadProducts(),
      child: MyApp(),
    ),
  );
}

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