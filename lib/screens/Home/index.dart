import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BuildContext context;

  // void _showDialog(val) {
  //     showDialog<void>(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return new SimpleDialog(
  //           contentPadding: EdgeInsets.all(16.0),
  //           children: <Widget>[
  //             new Text(
  //               val,
  //               textAlign: TextAlign.center,
  //               style: new TextStyle(fontSize: 50.0, color: Colors.black, decoration: null),
  //             ),
  //           ],
  //         );
  //       }
  //     );
  // }

  onPressed(String routeName) {
    Navigator.of(context).pushNamed("/PontoPage");
  }

  MaterialButton _setButton(val) {
    return new MaterialButton(
      child: new Text(val, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
      color: Colors.purple,
      textColor: Colors.white,
      //onPressed: () => _showDialog(val),
      onPressed: () => onPressed("/PontoPage"),
      padding: EdgeInsets.all(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
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