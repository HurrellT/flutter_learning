import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

enum MyDialogActions { yes, no, maybe }

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _dialogResult(MyDialogActions value) {
    print('You selected $value');
    Navigator.pop(context);
    //Switch on value
  }

  void _showAlert(String value) {
    if (value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(
        value,
        style: new TextStyle(fontSize: 30),
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            _dialogResult(MyDialogActions.yes);
          },
          child: new Text('Yes'),
        ),
        new FlatButton(
          onPressed: () {
            _dialogResult(MyDialogActions.no);
          },
          child: new Text('No'),
        ),
        new FlatButton(
          onPressed: () {
            _dialogResult(MyDialogActions.maybe);
          },
          child: new Text('Maybe'),
        ),
      ],
    );

    showDialog(context: context, builder: (BuildContext context) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog Demo'),
      ),
      body: new Container(
        padding: EdgeInsets.all(32),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: _onChange),
              new RaisedButton(
                  child: new Text('Alert Dialog!'),
                  onPressed: () {
                    _showAlert(_text);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
