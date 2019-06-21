//------------------------------------------------------------------------------------------------
//PRIMER HELLO WORLD APP

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Basic Layouts',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
////      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Basic Layouts'),
//        ),
//        drawer: Drawer(
//          child: ListTile(
//            leading: Icon(Icons.change_history),
//            title: Text('Change history'),
//            onTap: () {
//              // change app state...
//              Navigator.pop(context); // close the drawer
//            },
//            subtitle: Text('Like a boss'),
//          ),
//        ),
//        body: new Container(
//          padding: const EdgeInsets.all(32.0),
//          child: new Center(
//            child: new Column(
//              children: <Widget>[
//                new HelloWorldText(),
//                new Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    new HelloWorldText(),
//                    new HelloWorldText(),
//                    new HelloWorldText()
//                  ],
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}

// PRIMERAS PRUEBAS
//------------------------------------------------------------------------------------------------


//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}


//------------------------------------------------------------------------------------------------

// PRIMER APP BAR CON ICONOS

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//void main() => runApp(new MyApp());
//
////Will not change
//class MyApp extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => new _MyAppState();
//
//}
//
////Will change (Because its a State)
//class _MyAppState extends State<MyApp> {
//
//  String _title = 'App Bar Demo';
//  String _myState = 'No State';
//
//  void _pressed(String message) {
//    // Hay que hacer esto, para que guarde el estado, asi podes cambiar de app, etc, y guarda el estado hagas lo que hagas
//    setState(() {
//      _myState = message;
//    });
//    //Hacerlo de una NO SIRVE
////    _myState = message;
//    print(_myState);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: _title,
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text(_title),
//          actions: <Widget>[
//            new IconButton(icon: new Icon(Icons.add_alert), onPressed: () {_pressed('Alert pressed');},),
//            new IconButton(icon: new Icon(Icons.print), onPressed: () {_pressed('Print pressed');},),
//            new IconButton(icon: new Icon(Icons.people), onPressed: () {_pressed('People pressed');},),
//          ],
//        ),
//        body: new Container(
//          padding: const EdgeInsets.all(32.0),
//          child: new Center(
//            child: new Text(_myState),
//          ),
//        ),
//      ),
//    );
//  }
//}


//------------------------------------------------------------------------------------------------
//LOGIN APP


//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/foundation.dart';
//
//class Login extends StatelessWidget {
//
//  const Login ({Key key, @required this.onSubmit}) : super(key:key);
//
//  final VoidCallback onSubmit;
//  static final TextEditingController _user = new TextEditingController();
//  static final TextEditingController _pass = new TextEditingController();
//
//  String get username => _user.text;
//  String get password => _pass.text;
//
//  @override
//  Widget build(BuildContext context) {
//    return
//      new Container(
//          padding: EdgeInsets.all(32.0),
//          child: new Column(
//            children: <Widget>[
//              new TextField(controller: _user, decoration: new InputDecoration(hintText: 'Enter your username'),),
//              new TextField(controller: _pass, decoration: new InputDecoration(hintText: 'Enter your password'), obscureText: true,),
//              new RaisedButton(child: new Text('Submit'), onPressed: onSubmit,)
//            ],
//          )
//      );
//  }
//
//}


//------------------------------------------------------------------------------------------------


// NAVIGATORS AND ROUTERS

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_learning/Screens/NavigationAppHome.dart';
//import 'package:flutter_learning/Screens/Second.dart';
//import 'package:flutter_learning/Screens/Third.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return
//      new MaterialApp(
//        title: 'Navigation',
//        routes: <String,WidgetBuilder>{
//          '/Home' : (BuildContext context) => new NavigationAppHome(),
//          '/Second' : (BuildContext context) => new Second(),
//          '/Third' : (BuildContext context) => new Third()
//        },
//        home: new NavigationAppHome(),
//      );
//  }
//
//}


//------------------------------------------------------------------------------------------------


//SNACKBAR
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//void main() => runApp(new MaterialApp(home: new MyApp()));
//
//class MyApp extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => new MyAppState();
//}
//
//class MyAppState extends State<MyApp> {
//
//  //vars
//  String _text = '';
//
//  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();
//
//  //Methods
//
//  void _onChange(String value) {
//    setState(() {
//      _text = value;
//    });
//  }
//
//  void _showSnackBar(String value) {
//    if (value.isEmpty) return;
//    _scaffoldState.currentState.showSnackBar(
//        new SnackBar(
//          content: new Text(value),
//        )
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      key: _scaffoldState,
//      appBar: new AppBar(
//        title: new Text('SnackBar Demo'),
//      ),
//      body: new Container(
//        padding: new EdgeInsets.all(32),
//        child: new Center(
//          child: new Column(
//            children: <Widget>[
//              new TextField(onChanged: _onChange,),
//              new RaisedButton(
//                child: new Text('SnackBar!'),
//                onPressed: () {_showSnackBar(_text);},
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}


//------------------------------------------------------------------------------------------------

//ALERT DIALOG

//import 'package:flutter/material.dart';
//
//void main() => runApp(new MaterialApp(
//  home: new MyApp(),
//));
//
//class MyApp extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => new MyAppState();
//}
//
//enum MyDialogActions { yes, no, maybe }
//
//class MyAppState extends State<MyApp> {
//  String _text = '';
//
//  void _onChange(String value) {
//    setState(() {
//      _text = value;
//    });
//  }
//
//  void _dialogResult(MyDialogActions value) {
//    print('You selected $value');
//    Navigator.pop(context);
//    //Switch on value
//  }
//
//  void _showAlert(String value) {
//    if (value.isEmpty) return;
//
//    AlertDialog dialog = new AlertDialog(
//      content: new Text(
//        value,
//        style: new TextStyle(fontSize: 30),
//      ),
//      actions: <Widget>[
//        new FlatButton(
//          onPressed: () {
//            _dialogResult(MyDialogActions.yes);
//          },
//          child: new Text('Yes'),
//        ),
//        new FlatButton(
//          onPressed: () {
//            _dialogResult(MyDialogActions.no);
//          },
//          child: new Text('No'),
//        ),
//        new FlatButton(
//          onPressed: () {
//            _dialogResult(MyDialogActions.maybe);
//          },
//          child: new Text('Maybe'),
//        ),
//      ],
//    );
//
//    showDialog(context: context, builder: (BuildContext context) => dialog);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Alert Dialog Demo'),
//      ),
//      body: new Container(
//        padding: EdgeInsets.all(32),
//        child: new Center(
//          child: new Column(
//            children: <Widget>[
//              new TextField(onChanged: _onChange),
//              new RaisedButton(
//                  child: new Text('Alert Dialog!'),
//                  onPressed: () {
//                    _showAlert(_text);
//                  })
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}


//------------------------------------------------------------------------------------------------

//TEXT FIELD

//
//import 'package:flutter/material.dart';
//
//void main() => runApp(new MaterialApp(home: new MyApp(),));
//
//class MyApp extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => MyAppState();
//
//}
//
//class MyAppState extends State<MyApp> {
//
//  String _text = '';
//
//  void _onPressed() {
//    print('The text is $_text');
//  }
//
//  void _onPressed2() {
//    print(_controller.text);
//  }
//
//  void _onChanged(String value) {
//    setState(() {
//      _text = value;
//    });
//  }
//
//  final TextEditingController _controller = new TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Text Field demo'),
//      ),
//      body: new Container(
//        padding: new EdgeInsets.all(32),
//        child: new Center(
//          child: new Column(
//            children: <Widget>[
//              new TextField(
//                onChanged: (String value){_onChanged(value);},
//                controller: _controller,
//                maxLines: 3,
//                autocorrect: true,
//                decoration: new InputDecoration(
//                    icon: new Icon(Icons.print),
//                    hintText: 'Type something here',
//                    labelText: 'What is your name'
//                ),
//              ),
//              new RaisedButton(
//                  child: new Text('Click me!'),
////                onPressed: (){_onPressed();}
//                  onPressed: (){_onPressed2();}
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//}


//------------------------------------------------------------------------------------------------

//CHECKBOX
//
//
//import 'package:flutter/material.dart';
//
//void main() => runApp(new MaterialApp(home: new MyApp(),));
//
//class MyApp extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => new MyAppState();
//
//}
//
//class MyAppState extends State<MyApp> {
//
//  bool _isChecked = false;
//
//  void onChanged(bool value) {
//    setState(() {
//      _isChecked = value;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Checkbox Demo'),
//      ),
//      body: new Container(
//        padding: new EdgeInsets.all(32),
//        child: new Center(
//          child: new Column(
//            children: <Widget>[
//              new Row(
//                children: <Widget>[
//                  new Text('Click it ->'),
//                  new Checkbox(
//                    value: _isChecked,
//                    onChanged: (bool value){onChanged(value);},
//                  )
//                ],
//              ),
//              new CheckboxListTile(
//                title: new Text('Click me!'),
//                value: _isChecked,
//                activeColor: Colors.red,
//                secondary: const Icon(Icons.home),
//                onChanged: (bool value){onChanged(value);},
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//}

//------------------------------------------------------------------------------------------------

//RADIOS BUTTONS
//
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//
//void main() => runApp(new MaterialApp(home: new MyApp(),));
//
//class MyApp extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => new MyAppState();
//
//}
//
//class MyAppState extends State<MyApp> {
//
//  int _selected = 0;
//
//  void onChanged(int value) {
//    setState(() {
//      _selected = value;
//    });
//
//    print('Value = $value');
//  }
//
//  List<Widget> makeRadios() {
//    List<Widget> list = new List<Widget>();
//
//    for(int i = 0; i < 3; i++) {
//      list.add(
//          new Row(
//            children: <Widget>[
//              new Text('Radio  $i'),
//              new Radio(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);})
//            ],
//          )
//      );
//    }
//
//    for(int i = 0; i < 3; i++) {
//      list.add(
//          new RadioListTile(
//            title: new Text('Radio Tile $i'),
//            activeColor: Colors.red,
//            secondary: new Icon(Icons.home),
//            subtitle: new Text('Sub title'),
//            value: i,
//            groupValue: _selected,
//            onChanged: (int value) {onChanged(value);},
//          )
//      );
//    }
//
//    return list;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(title: new Text('Radio Demo'),),
//      body: new Container(
//        padding: EdgeInsets.all(32),
//        child: new Center(
//          child: new Column(
//              children: makeRadios()
//          ),
//        ),
//      ),
//    );
//  }
//
//}