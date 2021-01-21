/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongDto.dart';
import 'package:scoped_model/scoped_model.dart';

class LandScapeWidget extends StatefulWidget {
  @override
  _LandScapeWidgetState createState() => _LandScapeWidgetState();
}

class _LandScapeWidgetState extends State<LandScapeWidget>
    with TickerProviderStateMixin {
  Animation<double> hAnimationDuration;
  AnimationController hAnimationController;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Row(
      children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width / 1.9,
          height: MediaQuery.of(context).size.height,
          child: Hero(
            tag: 'this is tag',
            child: Image.asset(
              "images/defatul_image.webp",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        new Expanded(
          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Text Here",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        "Text Here",
                        maxLines: 1,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              new Slider(
                value: 0.3,
                min: 0.0,
                max: 5.0,
                onChanged: (double value) => {
                  /*onChanged Listerner*/
                },
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: new Text("Text goes Here"),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: new Text(
                      new Duration().toString().split('.').first,
                    ),
                  ),
                ],
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
                              onPressed: () {
                                /*Todo onPress */
                              });
                        },
                      ),
                      //fab,
                      new FloatingActionButton(
                        backgroundColor: Colors.blue,
                        child: new AnimatedIcon(
                          icon: AnimatedIcons.pause_play,
                          progress: hAnimationDuration,
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
                    icon: Icon(Icons.playlist_add),
                    tooltip: "Add to Favourite",
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }

  @override
  void initState() {
    hAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    hAnimationDuration =
        Tween<double>(begin: 0.0, end: 1.0).animate(hAnimationController);
  }
}
