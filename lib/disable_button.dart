import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isDisable = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          child: Text(
            'open',
            style: TextStyle(fontSize: 24, color: CupertinoColors.white),
          ),
          disabledColor: Colors.grey,
          onPressed: isDisable == true
              ? null
              : () {
                  print('click');
                  setState(() {
                    isDisable = true;
                  });
                  // Navigator.push(context, CupertinoPageRoute(
                  //     builder: (context) =>
                  //         NewPage(title: title,
                  //             color: color,
                  //             number: number + 1)));
                },
        ),
      ),
    );
  }
}
