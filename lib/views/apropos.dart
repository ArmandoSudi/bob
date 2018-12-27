import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';
import 'package:vbofb/views/candidats/candidats_view.dart';
import 'package:vbofb/views/download/download_view.dart';
import 'package:vbofb/views/home/home_view.dart';
import 'package:vbofb/views/jury/jury_view.dart';
import 'package:vbofb/views/musiques/musiques_view.dart';
import 'package:vbofb/views/photos/photos_view.dart';
import 'package:vbofb/views/splashscreen.dart';
import 'package:vbofb/views/videos/videos_view.dart';
import 'package:vbofb/views/votes/votes_view.dart';

class AproposView extends StatelessWidget {
  static String tag = "apropos-view";

  @override
  Widget build(BuildContext context) {

    // Function for building a column of type ICON + TEXT (icon on top of text)
    Column buildButtonColumn(String imageUrl, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl, ),
          Container(
              child: Text(label,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  )))
        ],
      );
    }

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

    Widget titleSection = Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text('Alicia Vinkender',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ))),
                Text(
                  'Actor',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )),

      ]),
    );

    Widget buttonSection = Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn('images/facebook_50.png', 'facebook'),
        buildButtonColumn('images/twitter_50.png', 'twitter'),
        buildButtonColumn('images/instagram_50.png', 'instagram'),
        buildButtonColumn('images/whatsapp_50.png', 'whatsapp'),
      ],
    ));

    Widget textSection = Card(
      elevation: 3.0,
      child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(
              'A propos de l\'evenement',
          style: TextStyle(
            color: Colors.black
          ))
      )
    );

    Widget textSectionOne = Card(
      elevation: 3.0,
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'A propos de l\'entreprise',
              style: TextStyle(
                color: Colors.black,
              )
            ),
            Text(
              'Vodacom est une societe de telephonie mobile leder africain de communication offrant une large gamme de services de communication',
              style: TextStyle(
                color: Colors.black54,
              ),
            )
          ],
        )
      ),
    );

    Widget photoSection = GridView.count(
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
    );

    var stack = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: Container(
            constraints: new BoxConstraints.expand(height: 140.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/show.jpg'),
                fit: BoxFit.cover,
              )
            ),
          )
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/alicia.jpg'),
                radius: 80.0,
              ),
            ],
          ),
        ),
      ],
    );

    Widget aProposSection = ListView(
      children: [
        stack,
        buttonSection,
        textSection,
        textSectionOne,
      ]
    );

//    void _goToUrl (String url) {
//      async()
//    }

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: MenuDrawer(),
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: 'A PROPOS'),
                  Tab(text: 'PHOTO'),
                ]
              ),
              title: Text('A Propos')
            ),
            body: TabBarView(
              children: [
                aProposSection,
                photoSection,
              ])
        )
      ),
      routes: routes,
    );
  }
}
