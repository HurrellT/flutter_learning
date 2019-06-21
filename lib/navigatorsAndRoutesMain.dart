

//------------------------------------------------------------------------------------------------


// NAVIGATORS AND ROUTERS

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/Screens/NavigationAppHome.dart';
import 'package:flutter_learning/Screens/Second.dart';
import 'package:flutter_learning/Screens/Third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      new MaterialApp(
        title: 'Navigation',
        routes: <String,WidgetBuilder>{
          '/Home' : (BuildContext context) => new NavigationAppHome(),
          '/Second' : (BuildContext context) => new Second(),
          '/Third' : (BuildContext context) => new Third()
        },
        home: new NavigationAppHome(),
      );
  }

}