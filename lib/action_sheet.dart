import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton.filled(
          child: Text('show dialog'),
          onPressed: () async{
          final int? number = await showCupertinoModalPopup(
              context: context,
              builder: buildMoadal,
            );
          print('you click on $number');
          }),
    ));
  }

  Widget buildMoadal(BuildContext context) => CupertinoActionSheet(
    title: Text('Title'),
        message: Text('message'),
        actions: [
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: Text('Action 1')),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 2);
              },
              child: Text('Action 2')),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 3);
              },
              child: Text('Action 3')),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
      );
}
