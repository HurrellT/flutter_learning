
//------------------------------------------------------------------------------------------------


//SNACKBAR

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {

  //vars
  String _text = '';

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  //Methods

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _showSnackBar(String value) {
    if (value.isEmpty) return;
    _scaffoldState.currentState.showSnackBar(
        new SnackBar(
          content: new Text(value),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text('SnackBar Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: _onChange,),
              new RaisedButton(
                child: new Text('SnackBar!'),
                onPressed: () {_showSnackBar(_text);},
              )
            ],
          ),
        ),
      ),
    );
  }
}

