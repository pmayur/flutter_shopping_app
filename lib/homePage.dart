import 'package:flutter/cupertino.dart';
// import 'styles/styles.dart';

class CupertinoStoreHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Cupertino Store'),
      ),
      child: Container(),
    );

  }
}