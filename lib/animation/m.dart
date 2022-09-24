import 'package:flutter/material.dart';
import 'package:test/animation/CharactersListScreen.dart';

class m extends StatefulWidget {
  const m({Key? key}) : super(key: key);

  @override
  State<m> createState() => _mState();
}

class _mState extends State<m> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animals',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
        ),
        home: CharactersListScreen());
  }
}
