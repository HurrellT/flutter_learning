import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  int _selected = 0;

  void onChanged(int value) {
    setState(() {
      _selected = value;
    });

    print('Value = $value');
  }

  List<Widget> makeRadios() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++) {
      list.add(
          new Row(
            children: <Widget>[
              new Text('Radio  $i'),
              new Radio(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);})
            ],
          )
      );
    }

    for(int i = 0; i < 3; i++) {
      list.add(
        new RadioListTile(
          title: new Text('Radio Tile $i'),
          activeColor: Colors.red,
          secondary: new Icon(Icons.home),
          subtitle: new Text('Sub title'),
          value: i,
          groupValue: _selected,
          onChanged: (int value) {onChanged(value);},
        )
      );
    }

      return list;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Radio Demo'),),
      body: new Container(
        padding: EdgeInsets.all(32),
        child: new Center(
          child: new Column(
            children: makeRadios()
          ),
        ),
      ),
    );
  }

}