import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/candidats/candidats_view.dart';
import 'package:vbofb/views/download/download_view.dart';
import 'package:vbofb/views/home/home_view.dart';
import 'package:vbofb/views/jury/jury_view.dart';
import 'package:vbofb/views/musiques/musiques_view.dart';
import 'package:vbofb/views/photos/photos_view.dart';
import 'package:vbofb/views/videos/videos_view.dart';
import 'package:vbofb/views/apropos.dart';
import 'package:vbofb/views/votes/votes_view.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      children: <Widget>[
        new Container(
          child: new DrawerHeader(
            child: new Text("Vodacom\nBest of the best",
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.red.shade900, Colors.red])),
            padding: new EdgeInsets.only(top: 85.0, left: 15.0),
          ),
        ),
        new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('Accueil'),
            onTap: () {
              navigatorPushNamed(context, HomeView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.shopping_cart),
            title: new Text('Vidéos'),
            onTap: () {
              navigatorPushNamed(context, VideoView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.view_list),
            title: new Text('Photos'),
            onTap: () {
              navigatorPushNamed(context, PhotoView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.dashboard),
            title: new Text('Musiques'),
            onTap: () {
              navigatorPushNamed(context, MusiqueView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.assessment),
            title: new Text('Candidats'),
            onTap: () {
              navigatorPushNamed(context, CandidatView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.assignment_ind),
            title: new Text('Votes'),
            onTap: () {
              navigatorPushNamed(context, VoteView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text('Jury'),
            onTap: () {
              navigatorPushNamed(context, JuryView.tag);
            }),
        new Divider(),
        new ListTile(
            leading: new Icon(Icons.file_download),
            title: new Text('Vidéos téléchargées'),
            onTap: () {
              navigatorPushNamed(context, DownloadView.tag);
            }),
        new ListTile(
            leading: new Icon(Icons.info),
            title: new Text('A propos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context)..pushNamed(AproposView.tag);
            }),
      ],
    ));
  }

  void navigatorPushNamed(var context, String routeName) {
    String newRouteName = routeName;
    bool isNewRouteSameAsCurrent = false;

    Navigator.popUntil(context, (route) {
      if (route.settings.name == newRouteName) {
        isNewRouteSameAsCurrent = true;
      }
      return true;
    });

    Navigator.pop(context);
    if (!isNewRouteSameAsCurrent) {
      Navigator.pushNamed(context, newRouteName);
    }
  }
}
