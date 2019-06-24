import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

enum Answer{YES,NO,MAYBE}

class MyAppState extends State<MyApp> {

  String _answer = '';

  void setAnswer(String value) {
    setState(() {
      //TODO: act on the answer
      _answer = value;
    });
  }

  Future<Null> _askUser() async {
    switch(
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: new Text('Do you like Flutter?'),
            children: <Widget>[
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context,Answer.YES);},
                child: const Text('Yes!'),
              ),
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context,Answer.NO);},
                child: const Text('No!'),
              ),
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context,Answer.MAYBE);},
                child: const Text('Maybe...'),
              ),
              new Icon(Icons.home),
            ],
          );
        },
      )
    ) {
      case Answer.YES:
        setAnswer('yes');
        break;
      case Answer.NO:
        setAnswer('no');
        break;
      case Answer.MAYBE:
        setAnswer('maybe');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Name here'),),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new Text('You answered ${_answer}'),
            new RaisedButton(
              child: new Text('Click me'),
              onPressed: _askUser,
            )
          ],
        ),
      ),
    );
  }

}