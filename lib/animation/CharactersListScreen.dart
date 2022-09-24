import 'package:flutter/material.dart';
import 'package:test/animation/CharacterWidget.dart';
import 'package:test/animation/styleguide.dart';

class CharactersListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CharactersListScreenState();
  }
}

class _CharactersListScreenState extends State<CharactersListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Virtue  ", style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "Mental-Health",
                          style: TextStyle(fontSize: 23, color: Colors.black)),
                    ]),
                  ),
                ),
                Expanded(
                  child: CharacterWidget(),
                )
              ],
            ),
          ),
        ));
  }
}
