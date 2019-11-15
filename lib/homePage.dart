import 'package:flutter/cupertino.dart';
// import 'styles/styles.dart';
import 'package:shopping_app/navigation/productListTab.dart';
import 'package:shopping_app/navigation/searchTab.dart';
import 'package:shopping_app/navigation/shoppingCartTab.dart';

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(

      tabBar: CupertinoTabBar(

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Products'),
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Search'),
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            title: Text('Cart'),
          ),

        ],
      ),

      tabBuilder: (context, index) {
        switch (index) {

          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProductListTab(),
              );
            });

          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchTab(),
              );
            });

          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ShoppingCartTab(),
              );
            });
        }
      },
    );
  }
}