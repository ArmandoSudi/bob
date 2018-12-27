import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbofb/views/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class VoteView extends StatefulWidget {
  static String tag = "votes-view";

  @override
  State createState() {
    return  _VoteState();
  }

}

class _VoteState extends State<VoteView> {
  static String tag = "votes-view";
  List _voteTypes = [
    '42601 -> 1 vote pour 0.02\$',
    '42605 -> 5 vote pour 0.08\$',
    '42610 -> 10 vote pour 0.15\$'
  ];


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _candidatNumero = getCandidatNumero();
    _currentVoteType = _dropDownMenuItems[0].value;
    _currentCandidateNumber = '1';
  }

  List<DropdownMenuItem<String>> _dropDownMenuItems, _candidatNumero;
  String _currentVoteType, _currentCandidateNumber;

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String item in _voteTypes) {
      items.add(new DropdownMenuItem(value: item, child: Text(item)));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getCandidatNumero() {
    List<DropdownMenuItem<String>> items = new List();
    for (int i = 1; i <= 10; i++) {
      items.add(
          new DropdownMenuItem(value: i.toString(), child: Text(i.toString())));
    }
    return items;
  }

  Widget _buidText(String value) {
    return Text(
      value,
      style: TextStyle(
          color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget voteCardContent = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buidText("Nombre de votes"),
        DropdownButton(
          value: _currentVoteType,
          items: _dropDownMenuItems,
          onChanged: changedDropDownItem),
        _buidText("Numero du candidat"),
        DropdownButton(
            value: _currentCandidateNumber,
            items: _candidatNumero,
            onChanged: changedCandidatDropDownItem),

        new RaisedButton(
          color: Colors.red,
          highlightColor: Colors.redAccent,
          child: const Text('Voter',
          style: TextStyle(color: Colors.white),),
          onPressed: () {
            // Perform some action
          },
        ),
      ],
    );

    final appBar = AppBar(
      title: Text(
        "Votes",
        style: TextStyle(
            fontSize:
                Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
            color: Colors.white),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: appBar,
      drawer: MenuDrawer(),
      body: new Center(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: voteCardContent,
          ),
        ),
      ),
    );
  }

  void changedCandidatDropDownItem(String value) {
    setState(() {
      _currentCandidateNumber = value;
    });
  }

  void changedDropDownItem(String value) {
    setState(() {
      _currentVoteType = value;
    });
  }


}
