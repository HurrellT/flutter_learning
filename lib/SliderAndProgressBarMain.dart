import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  double _value = 0;

  void _onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Slider Demo'),),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new Text('Slider value is ${_value.round()}'),
            new Slider(
              min: 0,
              max: 100,
              value: _value,
              onChanged: (double value) {_onChanged(value);},
            ),
            new Text('Progress values is ${_value.round()}'),
            // Va de 0 a 1, osea usa valores de 0.1, 0.2 = %20
            new LinearProgressIndicator(
              value: _value * .01,
            )
          ],
        ),
      ),
    );
  }

}