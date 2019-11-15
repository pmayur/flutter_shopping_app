import 'package:flutter/cupertino.dart';

// import 'styles/styles.dart';
import 'package:shopping_app/homePage.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoStoreHomePage(),
    );
  }
}