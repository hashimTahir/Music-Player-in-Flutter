/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/ui/widgets/LandScapeWidget.dart';
import 'package:music_player/ui/widgets/PortraitWidget.dart';

class PlaylistPage extends StatefulWidget {
  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  Orientation orientation;
  GlobalKey<ScaffoldState> scaffoldState = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldState,
      body: Stack(children: <Widget>[
        orientation == Orientation.portrait
            ? PortraitWidget()
            : LandScapeWidget(),
        new Positioned(
          //Place it at the top, and not use the entire screen
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Text('Now Playing'),
            backgroundColor: Colors.transparent, //No more green
            elevation: 0.0, //Shadow gone
            leading: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => {Navigator.pop(context)},
            ),
          ),
        ),
      ]),
    );
  }
}
