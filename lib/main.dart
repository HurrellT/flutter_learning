import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  String _value = '';
//  List<String> values = new List<String>();
  List<String> _values = new List();

  @override
  void initState() {
    _values.addAll(['Bryan' , 'Chris', 'Heather' , 'Tommy']);
    _value = _values.elementAt(0);
  }

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('DropDownButton Demo'),),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new DropdownButton(
              value: _value,
              items: _values.map((String value){
                return new DropdownMenuItem(
                  value: value,
                  child: new Row(
                    children: <Widget>[
                      new Icon(Icons.home),
                      new Text('Person: ${value}')
                    ],
                  ),);
              }).toList(),
              onChanged: (String value) {_onChanged(value);},
            )
          ],
        ),
      ),
    );
  }

}