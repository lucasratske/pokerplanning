import 'package:flutter/material.dart';

class PontoScreen extends StatefulWidget {
  //PontoScreen({Key key, this.ponto}) : super(key: key);
  PontoScreen({Key key}) : super(key: key);
  
  //final String ponto;

  @override
  _PontoScreenState createState() => new _PontoScreenState();
}

class _PontoScreenState extends State<PontoScreen> {

  @override
  Widget build(BuildContext context) {    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Meu ponto é..."),
      ),
      body: new Center(
        //child: new Text(widget.ponto),
        child: new Text("Não foi implementado"),
      ),
    );
  }
}