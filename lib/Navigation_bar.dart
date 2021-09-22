import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Explore',
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Text('Done'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        middle: Text('add image'),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/a.jpeg',fit: BoxFit.fitHeight,)
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton.filled(
              child: Text('Next'),
              onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => NavPage()))),
        ));
  }
}
