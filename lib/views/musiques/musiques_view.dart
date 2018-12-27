import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';

class MusiqueView extends StatelessWidget {
  static String tag = "musiques-view";

  List<ListTile> _buildMusicTile() {
    List<ListTile> items = new List();
    for (int i = 0; i < 10; i++) {
      items.add(new ListTile(
        title: Text('Music $i'),
        leading: Icon(
          Icons.music_note,
          color: Colors.red,
        ),
      ));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildMusicList = new ListView(
      children: _buildMusicTile(),
    );

    final appBar = AppBar(
      title: Text(
        "Musiques",
        style: TextStyle(
            fontSize:
                Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
            color: Colors.white),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    );

    return Scaffold(
      appBar: appBar,
      drawer: MenuDrawer(),
      body: new Center(
        child: _buildMusicList,
      ),
    );
  }
}
