import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoTabPage extends StatelessWidget {
  final String pageTitle = 'Tab';

  final items = List.generate(3, (i) =>
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
      )
  ).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text(pageTitle),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.tag_faces)),
                  Tab(text: '메뉴2'),
                  Tab(icon: Icon(Icons.info), text: '메뉴3'),
                ],
              ),
            ),
            body: TabBarView(
              children: items,
            )
        ));
  }
}
