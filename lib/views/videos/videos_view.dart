import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';
import 'play_view.dart';
import 'voir_liste_view.dart';
import 'category_view.dart';
import 'trending_view.dart';

import 'package:vbofb/views/menu.dart';

class VideoView extends StatefulWidget {
  static String tag = "video-view";

  @override
  State createState() {
    return _VideoState();
  }
}

class _VideoState extends State<VideoView>{

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlayWidget(),
    CategoryWidget(),
    TrendingWidget(),
    VoirListeWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos')
      ),
      drawer: MenuDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_arrow),
            title: new Text('Play')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.border_all),
            title: new Text('Categorie')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.trending_up),
            title: new Text('Trending')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.remove_red_eye),
            title: new Text('Voir la liste')
          ),
        ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState((){
      _currentIndex = index;
    });
  }
}