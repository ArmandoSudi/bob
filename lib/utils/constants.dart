import 'package:vbofb/views/candidats/candidats_view.dart';
import 'package:vbofb/views/download/download_view.dart';
import 'package:vbofb/views/home/home_view.dart';
import 'package:vbofb/views/jury/jury_view.dart';
import 'package:vbofb/views/musiques/musiques_view.dart';
import 'package:vbofb/views/photos/photos_view.dart';
import 'package:vbofb/views/apropos.dart';
import 'package:vbofb/views/videos/videos_view.dart';
import 'package:vbofb/views/votes/votes_view.dart';
import 'package:flutter/material.dart';


const APP_NAME = "Vodacom BofB";
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