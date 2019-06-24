import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  String _lastPress = 'never';

  void _onPressed() {
    print('pressed');
    setState(() {
      DateTime current = new DateTime.now();
      _lastPress = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Name here'),),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.timer),
        backgroundColor: Colors.red,
        onPressed: _onPressed,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new Text('Last pressed: ${_lastPress}')
          ],
        ),
      ),
    );
  }

}