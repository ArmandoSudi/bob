import 'package:flutter/material.dart';
import 'package:vbofb/utils/constants.dart';
import 'package:vbofb/views/apropos.dart';
import 'package:vbofb/views/candidats/candidats_view.dart';
import 'package:vbofb/views/download/download_view.dart';
import 'package:vbofb/views/home/home_view.dart';
import 'package:vbofb/views/jury/jury_view.dart';
import 'package:vbofb/views/musiques/musiques_view.dart';
import 'package:vbofb/views/photos/photos_view.dart';
import 'package:vbofb/views/splashscreen.dart';
import 'package:vbofb/views/videos/videos_view.dart';
import 'package:vbofb/views/votes/votes_view.dart';

void main() => runApp(new VBofBApp());

class VBofBApp extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    HomeView.tag: (context) => HomeView(),
    VideoView.tag: (context) => VideoView(),
    PhotoView.tag: (context) => PhotoView(),
    MusiqueView.tag: (context) => MusiqueView(),
    CandidatView.tag: (context) => CandidatView(),
    DownloadView.tag: (context) => DownloadView(),
    JuryView.tag: (context) => JuryView(),
    VoteView.tag: (context) => VoteView(),
    AproposView.tag: (context) => AproposView(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
      routes: routes
    );
  }
}