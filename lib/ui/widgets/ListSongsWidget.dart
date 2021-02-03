/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/ui/widgets/ListItem.dart';

// TODO: implement ListSongsWidget
class ListSongsWidget extends StatefulWidget {
  int mode;
  List<SongModel> hSongList;

  ListSongsWidget(this.hSongList);

  @override
  _ListSongsWidgetState createState() => _ListSongsWidgetState(hSongList);
}

class _ListSongsWidgetState extends State<ListSongsWidget> {
  List<SongModel> hSongList;

  _ListSongsWidgetState(this.hSongList);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("All Songs"),
          actions: <Widget>[
            widget.mode == 3
                ? IconButton(
                    icon: Icon(
                      Icons.add,
                    ),
                    onPressed: () {
                      hShowDialog();
                    },
                  )
                : Container()
          ],
        ),
        body: new Container(
          child: new ListView.builder(
              itemCount: hSongList.length == null ? 0 : hSongList.length,
              itemBuilder: (context, index) => ListItem(hSongList[index])),
        ));
  }

  void hShowDialog() {}
}
