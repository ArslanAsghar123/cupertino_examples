import 'package:cupertino_examples/action_sheet.dart';
import 'package:cupertino_examples/disable_button.dart';
import 'package:cupertino_examples/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list.dart';
import 'new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Items> items = List.from(item);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        barBackgroundColor: CupertinoColors.black

      ),
      home: Button(
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  bool inDisable = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (index) {
            print('pressed no: $index');
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: 'chat'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'profile'),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                  builder: (context) => NewPage(
                        title: 'tab 1',
                        color: Colors.blue,
                        number: 1,
                      ));
            case 1:
              return CupertinoTabView(
                  builder: (context) => NewPage(
                        title: 'tab 2',
                        color: Colors.green,
                        number: 2,
                      ));
            case 2:
            default:
              return CupertinoTabView(
                  builder: (context) => ImagePage());
          }
        });
  }
}
