
//------------------------------------------------------------------------------------------------

// PRIMER APP BAR CON ICONOS

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//Will not change
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _MyAppState();

}

//Will change (Because its a State)
class _MyAppState extends State<MyApp> {

  String _title = 'App Bar Demo';
  String _myState = 'No State';

  void _pressed(String message) {
    // Hay que hacer esto, para que guarde el estado, asi podes cambiar de app, etc, y guarda el estado hagas lo que hagas
    setState(() {
      _myState = message;
    });
    //Hacerlo de una NO SIRVE
//    _myState = message;
    print(_myState);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: () {_pressed('Alert pressed');},),
            new IconButton(icon: new Icon(Icons.print), onPressed: () {_pressed('Print pressed');},),
            new IconButton(icon: new Icon(Icons.people), onPressed: () {_pressed('People pressed');},),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}