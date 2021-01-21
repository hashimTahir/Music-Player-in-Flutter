/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongDto.dart';
import 'package:scoped_model/scoped_model.dart';

class PortraitWidget extends StatefulWidget {
  @override
  _PortraitWidgetState createState() => _PortraitWidgetState();
}

class _PortraitWidgetState extends State<PortraitWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      // color: Colors.transparent,
      child: Column(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            child: new Hero(
              tag: 'tag 2',
              child: Image.asset(
                "images/defatul_image.webp",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          new Slider(
            value: 0.6,
            min: 0.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: new Text("Text Here"),
              ),
              new Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: new Text(
                  new Duration(days: 1).toString().split('.').first,
                ),
              ),
            ],
          ),
          new Expanded(
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'text here',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    "text here",
                    maxLines: 1,
                    style: new TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ScopedModelDescendant<SongDto>(
                    builder: (context, child, model) {
                      return new IconButton(
                        icon: new Icon(Icons.skip_previous, size: 40.0),
                      );
                    },
                  ),
                  new FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: new AnimatedIcon(
                      icon: AnimatedIcons.pause_play,
                    ),
                  ),
                  ScopedModelDescendant<SongDto>(
                    builder: (context, child, model) {
                      return new IconButton(
                        icon: new Icon(Icons.skip_next, size: 40.0),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new IconButton(
                tooltip: "Shuffle",
                icon: new Icon(Icons.shuffle),
              ),
              new IconButton(
                tooltip: "Playing queue",
                icon: new Icon(Icons.queue_music),
              ),
              new IconButton(
                tooltip: "Add to favourites",
                icon: Icon(Icons.playlist_add),
              )
            ],
          )
        ],
      ),
    );
  }
}
