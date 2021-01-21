/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';

class AvatarWidget extends StatefulWidget {
  SongModel hSongModel;

  AvatarWidget(this.hSongModel);

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState(hSongModel);
}

class _AvatarWidgetState extends State<AvatarWidget> {
  SongModel hSongModel;

  _AvatarWidgetState(this.hSongModel);

  String get uri => hSongModel.hUri;

  @override
  Widget build(BuildContext context) {
    return new Material(
        borderRadius: new BorderRadius.circular(30.0),
        elevation: 2.0,
        child: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            backgroundImage: NetworkImage(uri)));
  }
}
