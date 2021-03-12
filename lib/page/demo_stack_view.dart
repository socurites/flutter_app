import 'package:flutter/material.dart';

class DemoStackViewPage extends StatelessWidget {
  DemoStackViewPage(this.pageTitle);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.pageTitle),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Text(
                "align: Default"
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                  "align: bottomCenter"
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                  "align: center"
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
