import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoScrollViewPage extends StatelessWidget {
  final String pageTitle = 'Scroll List';
  final items = List.generate(30, (i) =>
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
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items,
        ),
      )
    );
  }
}