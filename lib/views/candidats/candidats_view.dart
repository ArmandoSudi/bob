import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';

class CandidatView extends StatelessWidget {
  static String tag = "candidat-view";

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: Text("Candidats", 
        style: TextStyle(fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0, 
        color: Colors.white
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    );

    return Scaffold(
      appBar: appBar,
      drawer: MenuDrawer(),
      body: GridView.count(
        //GridView with two columns
        crossAxisCount: 2,
        children: List.generate(5, (index) {
          return Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/alicia.jpg'),
              radius: 70.0,

            ),
          );
        })
      )
    );
  }
}