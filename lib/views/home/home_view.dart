import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';

class HomeView extends StatefulWidget {
  static String tag = "home-view";

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: Text("Accueil", 
        style: TextStyle(fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0, 
        color: Colors.white
        ),
      ),
      actions: <Widget>[
        Icon(Icons.search)
      ],
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    );

    return Scaffold(
      appBar: appBar,
      drawer: MenuDrawer(),      
      body: new Center(
        child: new CircularProgressIndicator()
      ),
    );
  }
}