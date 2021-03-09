import 'package:flutter/material.dart';

class ElementTreeBasicViewPage extends StatelessWidget {
  ElementTreeBasicViewPage(this.pageTitle);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
        ),
        body: Text(
          '요소 트리 샘플',
        )
    );
  }
}
