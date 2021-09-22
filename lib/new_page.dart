import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;
  final Color color;
  final int number;

  NewPage({required this.title, required this.color, required this.number});

  @override
  Widget build(BuildContext context) {
    bool isDisable = false;
    return CupertinoPageScaffold(
        backgroundColor: color,
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$title on $number',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
                CupertinoButton.filled(
                    child: Text(
                      'open',
                      style:
                      TextStyle(fontSize: 24, color: CupertinoColors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context, CupertinoPageRoute(
                          builder: (context) =>
                              NewPage(title: title,
                                  color: color,
                                  number: number + 1)));

                    })
              ],
            ),
          ),
        ));
  }
}
