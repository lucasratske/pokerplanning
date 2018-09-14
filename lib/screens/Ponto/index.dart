import 'package:flutter/material.dart';

class PontoScreen extends StatelessWidget {
  final String ponto;
  PontoScreen({Key key, @required this.ponto}) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Meu ponto é..."),
      ),
      body: new Center(
        child: new Text(ponto, style: new TextStyle(fontSize: 80.0, color: Colors.indigoAccent),),
      ),
    );
  }
}