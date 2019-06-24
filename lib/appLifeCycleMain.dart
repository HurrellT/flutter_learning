import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new MyAppState();

}

class MyAppState extends State<MyApp> with WidgetsBindingObserver{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Name here'),),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Column(
          children: <Widget>[
            new Text('Add Widgets here')
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    print('*** init state');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('*** state = ${state.toString()}');
    switch(state) {
      case AppLifecycleState.inactive:
        print('*** inactive');
        break;
      case AppLifecycleState.paused:
        print('*** paused');
        break;
      case AppLifecycleState.resumed:
        print('*** resumed');
        break;
      case AppLifecycleState.suspending:
        print('*** suspending');
        break;

    }
  }

  @override
  void dispose() {
    print('*** dispose');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

  }

}


