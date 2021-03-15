import 'package:flutter/material.dart';

class DemoTableViewPage extends StatelessWidget {
  DemoTableViewPage(this.pageTitle);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.pageTitle),
      ),
      body: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth> {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: FixedColumnWidth(64),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            children: [
              Container(
                height: 32,
                  color: Colors.green,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  height: 32,
                  width: 32,
                  color: Colors.red,
                )
              ),
              Container(
                height: 64,
                color: Colors.blue,
              )
            ]
          ),
          TableRow(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            children: [
              Container(
                height: 64,
                width: 128,
                color: Colors.purple
              ),
              Container(
                height: 32,
                color: Colors.yellow,
              ),
              Center(
                child: Container(
                  height: 32,
                  width: 32,
                  color: Colors.orange,
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
