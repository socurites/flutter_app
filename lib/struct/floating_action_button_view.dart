import 'package:flutter/material.dart';

class FloatingActionButtonViewPage extends StatefulWidget {
  FloatingActionButtonViewPage(this.pageTitle);

  final String pageTitle;

  @override
  _FloatingActionButtonViewPageState createState() => _FloatingActionButtonViewPageState();
}

class _FloatingActionButtonViewPageState extends State<FloatingActionButtonViewPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 100.0,
              ),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Image.asset(
                'assets/flutter_logo_1080.png',
                width: 100.0,
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            _getRaisedButtons(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Reset',
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter = 0;
    });
  }

  _getRaisedButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
            child: Text(
                'Decrement'
            ),
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
          ),
          RaisedButton(
            child: Text(
                'Increment'
            ),
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}
