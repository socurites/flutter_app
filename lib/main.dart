import 'package:flutter/material.dart';
import 'package:flutter_app/internal/element_tree_basic_view.dart';
import 'package:flutter_app/page/demo_grid_view.dart';
import 'package:flutter_app/page/demo_list_view_tile.dart';
import 'package:flutter_app/page/demo_page_view.dart';
import 'package:flutter_app/page/demo_scroll_view.dart';
import 'package:flutter_app/page/demo_stack_view.dart';
import 'package:flutter_app/page/demo_tab.dart';
import 'package:flutter_app/page/demo_table_view.dart';
import 'package:flutter_app/struct/floating_action_button_view.dart';
import 'package:flutter_app/struct/quantity_counter_button_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter Demo';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          automaticallyImplyLeading: false,
        ),
        body: Text('Main Body'),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 80.0,
                child: DrawerHeader(
                  child: Text("MENU"),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Layout Examples",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Stack'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoStackViewPage('Stack')));
                },
              ),
              ListTile(
                title: Text('Scroll List'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoScrollViewPage('Scroll List')));
                },
              ),
              ListTile(
                title: Text('List View / List Tile'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoListViewListTilePage('List View / List Tile')));
                },
              ),
              ListTile(
                title: Text('Grid View'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoGridViewPage('Grid View')));
                },
              ),
              ListTile(
                title: Text('Page View'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoPageViewPage('Page View')));
                },
              ),
              ListTile(
                title: Text('Tab'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoTabPage('Tab')));
                },
              ),
              ListTile(
                title: Text('Table'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemoTableViewPage('Table')));
                },
              ),
              SizedBox(
                height: 40.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Structural Examples",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('QuantityCounter Button'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuantityCounterButton('QuantityCounter Button')));
                },
              ),
              ListTile(
                title: Text('Floating Action Button'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FloatingActionButtonViewPage('Floating Action Button')));
                },
              ),
              SizedBox(
                height: 40.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Internal Examples",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Element Tree Basic'),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ElementTreeBasicViewPage('Element Tree Basic')));
                },
              ),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}