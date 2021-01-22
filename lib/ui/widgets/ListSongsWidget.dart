/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';

import 'AvatarWidget.dart';

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
        // appBar: widget.orientation == Orientation.portrait
        //     ? new AppBar(
        //         title: getTitle(widget.mode),
        //       )
        //     : null,
        appBar: new AppBar(
          title: Text("title here"),
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
            itemBuilder: (context, index) => Column(
              children: <Widget>[
                new Divider(
                  height: 8.0,
                ),
                new ListTile(
                  leading: new Hero(
                    child: AvatarWidget(hSongList[index]),
                    tag: hSongList[index].hTitle,
                  ),
                  title: new Text('song title here',
                      maxLines: 1, style: new TextStyle(fontSize: 18.0)),
                  subtitle: new Text(
                    'Song artist here',
                    maxLines: 1,
                    style: new TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  trailing: widget.mode == 2
                      ? new Text(
                          (index + 1).toString(),
                          style:
                              new TextStyle(fontSize: 12.0, color: Colors.grey),
                        )
                      : new Text(
                          new Duration(milliseconds: 22)
                              .toString()
                              .split('.')
                              .first,
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.grey)),
                  onTap: () {
                    /*Todo: ON Tap listener*/
                  },
                  onLongPress: () {
                    if (widget.mode == 3) {
                      showDialog(
                        context: context,
                        child: new AlertDialog(
                          title: new Text(
                              'Are you sure want remove this from favourites?'),
                          content: new Text('Song title here'),
                          actions: <Widget>[
                            new FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: new Text(
                                'No',
                              ),
                            ),
                            new FlatButton(
                              onPressed: () {
                                /*Todo on press listener*/
                              },
                              child: new Text('Yes'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }

  void hShowDialog() {}
}
