import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image.dart';


class Imagess extends StatelessWidget {
  final Items imgg;
  Imagess({ required this.imgg});
  @override
  Widget build(BuildContext context) {


    return CupertinoPageScaffold(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: CupertinoColors.activeGreen,
          child: Image.asset(imgg.img,fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
