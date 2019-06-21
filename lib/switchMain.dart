//------------------------------------------------------------------------------------------------

//SWITCH

import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  bool _value = false;

  void onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Switch Demo'),),
      body: new Container(
        padding: EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new Switch(
              value: _value,
              onChanged: (bool value) {onChanged(value);},
            ),
            new SwitchListTile(
              title: new Text(''),
              activeColor: Colors.red,
              secondary: const Icon(Icons.home),
              value: _value,
              onChanged: (bool value){onChanged(value);},
            )
          ],
        ),
      ),
    );
  }

}