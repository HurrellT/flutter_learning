import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/Login.dart';
import 'package:flutter_learning/Settings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _MyAppState();

}

class _MyAppState extends State<MyApp> {

  //Parameters

  String _title = 'Please Login';
  Widget _screen;
  Login _login;
  Settings _settings;
  bool _isAuthenticated;


  //Constructor

  _MyAppState() {
    _login = new Login(onSubmit: (){onSubmit();});
    _settings = new Settings();
    _screen = _login;
    _isAuthenticated = false;
  }


  //Methods

  void onSubmit() {
    print('Login with: ' + _login.username + ' ' + _login.password);
    if(_login.username == 'demo' && _login.password == 'demo') {
      _setAuthenticated(true);
    }
  }

  void _goHome() {
    print('Go Home');

    setState(() {
      if(_isAuthenticated) {
        _screen = _settings;
      }
      else {
        _screen = _login;
      }
    });
  }

  void logout() {
    print('Log out');
    _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth) {
    setState(() {
      if(auth) {
        _screen = _settings;
        _title = 'Welcome';
        _isAuthenticated = true;
      }
      else {
        _screen = _login;
        _title = 'Please Login';
        _isAuthenticated = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_goHome();}),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){logout();}),
          ],
        ),
        body: _screen,
      ),
    );
  }

}