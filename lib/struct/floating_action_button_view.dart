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
        tooltip: 'Inc',
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _getRaisedButtons() {
    return Container(
      child: Column(
        children: [
          Text(
              'Raised Button'
          ),
          RaisedButton(
            child: Text(
                'Decrement Counter'
            ),
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}
