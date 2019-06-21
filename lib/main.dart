import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyAppState();

}

class MyAppState extends State<MyApp> {

  String _text = '';

  void _onPressed() {
    print('The text is $_text');
  }

  void _onPressed2() {
    print(_controller.text);
  }

  void _onChanged(String value) {
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Field demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value){_onChanged(value);},
                controller: _controller,
                maxLines: 3,
                autocorrect: true,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.print),
                  hintText: 'Type something here',
                  labelText: 'What is your name'
                ),
              ),
              new RaisedButton(
                child: new Text('Click me!'),
//                onPressed: (){_onPressed();}
                onPressed: (){_onPressed2();}
              ),
            ],
          ),
        ),
      ),
    );
  }

}