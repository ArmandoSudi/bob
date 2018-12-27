import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';

class DownloadView extends StatelessWidget {
  static String tag = "dowload-view";

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: Text("Téléchargement", 
        style: TextStyle(fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0, 
        color: Colors.white
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    );

    return Scaffold(
      appBar: appBar,
      drawer: MenuDrawer(),
      body: new Center(
        child: new Icon(Icons.file_download, size: 150.0,color: Colors.redAccent)
      ),
    );
  }
}