import 'package:cupertino_examples/Navigation_bar.dart';
import 'package:cupertino_examples/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list.dart';

class ImagePage extends StatelessWidget {
  final List<Items> items = List.from(item);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Explore'),
            padding: EdgeInsetsDirectional.zero,
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(CupertinoIcons.add,size: 28,),
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NavPage()));
              },
            ),
            trailing: CupertinoButton(
              child: Icon(CupertinoIcons.search,size: 28,),
              onPressed: (){},
            ),
          ),

        ],
        body: SafeArea(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2 / 3,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CupertinoContextMenu(
                previewBuilder: (context, animation, child) => SizedBox.expand(
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Imagess(imgg: items[index]))),
                ),
                child: Center(
                  child: Imagess(imgg: items[index]),
                ),
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    child: Text('Like'),
                    trailingIcon: CupertinoIcons.heart,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: Text('Share'),
                    trailingIcon: CupertinoIcons.share,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: Text(
                      'delete',
                      style: TextStyle(color: Colors.red),
                    ),
                    trailingIcon: CupertinoIcons.delete,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class Items {
  String img;

  Items({required this.img});
}
