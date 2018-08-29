import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MJV - Poker Planning',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(title: 'MJV - Poker Planning'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _showDialog(val) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
            contentPadding: EdgeInsets.all(16.0),
            children: <Widget>[
              new Text(
                val,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 50.0, color: Colors.black, decoration: null),
              ),
            ],
          );
        }
      );
  }

  MaterialButton _setButton(val) {
    return new MaterialButton(
      child: new Text(val, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
      color: Colors.purple,
      textColor: Colors.white,
      onPressed: () => _showDialog(val),
      padding: EdgeInsets.all(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            new Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              direction: Axis.horizontal,
              children: <Widget>[
                _setButton("0"),
                _setButton("1"),
                _setButton("2"),
                _setButton("3"),
                _setButton("5"),
                _setButton("8"),
                _setButton("13"),
                _setButton("21"),
                _setButton("34"),
                _setButton("55"),
                _setButton("89"),
                _setButton("144"),
              ],
            )   
          ]
        )
      ),
    );
  }
}
