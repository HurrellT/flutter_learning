import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Third'),
      ),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('This is the Third Screen'),
              new RaisedButton(
                child: new Text('Back'),
                onPressed: () {
                  Navigator.of(context).pop('/Second');
                },
              ),
              new RaisedButton(
                child: new Text('Home'),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route<dynamic> route) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
