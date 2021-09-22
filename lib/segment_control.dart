import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Segment extends StatefulWidget {
  @override
  _SegmentState createState() => _SegmentState();
}

class _SegmentState extends State<Segment> {
  @override
  Widget build(BuildContext context) {
    int groupValue = 0;
    return Scaffold(
      body: ListView(
        children: [
          CupertinoSegmentedControl<int>(

              groupValue: groupValue,
              children: {
                0: buildSegment('Header 1'),
                1: buildSegment('Header 2'),
                2: buildSegment('Header 3')
              },
              onValueChanged: (groupValue) {
                print(groupValue);
                setState(() {
                  groupValue  = groupValue;
                });
              })
        ],
      ),
    );
  }

  Widget buildSegment(String name) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
