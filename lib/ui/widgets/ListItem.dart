/*
 * Copyright (c) 2021/  2/ 3.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';

class ListItem extends StatefulWidget {
  SongModel hSongModel;

  ListItem(SongModel this.hSongModel);

  @override
  _ListItemState createState() => _ListItemState(hSongModel);
}

class _ListItemState extends State<ListItem> {
  SongModel hSongModel;

  _ListItemState(SongModel this.hSongModel);

  @override
  Widget build(BuildContext context) {
    Column(
      children: <Widget>[
        new Divider(
          height: 8.0,
        ),
        new ListTile(
          title: Text(hSongModel.hTitle),
        ),
      ],
    );
  }
}
