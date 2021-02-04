/*
 * Copyright (c) 2021/  2/ 4.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';

class ListSongItem extends StatelessWidget {

  SongModel hSongModel;

  Null Function() onClick;

  ListSongItem({this.hSongModel, Null Function() this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: onClick,
            title: Text(hSongModel.hTitle),
            leading: CircleAvatar(
              backgroundImage: NetworkImage("/"),
            ),
          ),
        ));
  }
}
