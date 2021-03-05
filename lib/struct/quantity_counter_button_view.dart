import 'package:flutter/material.dart';

class QuantityCounterButton extends StatefulWidget {
  QuantityCounterButton(this.pageTitle);

  final String pageTitle;

  @override
  _QuantityCounterButtonState createState() => _QuantityCounterButtonState(pageTitle);
}

class _QuantityCounterButtonState extends State<QuantityCounterButton> {
  String componentLabel;
  int quantity = 0;

  _QuantityCounterButtonState(this.componentLabel) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(componentLabel),
      ),
      body: Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  this.quantity--;
                });
              },
            ),
            Text(
              "Qty: ${this.quantity}",
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  this.quantity++;
                });
              },
            ),
          ],
        ),
      )
    );
  }
}
