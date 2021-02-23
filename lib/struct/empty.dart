import 'package:flutter/material.dart';

class QuantityCounterButton extends StatefulWidget {
  final String pageTitle = 'Quantity Counter Button';

  @override
  _QuantityCounterButtonState createState() => _QuantityCounterButtonState(pageTitle);
}

class _QuantityCounterButtonState extends State<QuantityCounterButton> {
  String componentLabel;

  _QuantityCounterButtonState(this.componentLabel) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(componentLabel),
      ),
      body: Container()
    );
  }
}
