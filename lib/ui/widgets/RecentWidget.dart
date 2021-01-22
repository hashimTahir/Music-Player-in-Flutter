/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:music_player/models/SongDto.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:scoped_model/scoped_model.dart';

class RecentWidget extends StatelessWidget {
  List<SongModel> hSongList;

  RecentWidget(this.hSongList);

  @override
  Widget build(BuildContext context) {
    return new Container(
      //aspectRatio: 16/15,
      height: 200.0,
      child: ScopedModelDescendant<SongDto>(builder: (context, child, model) {
        return new ListView.builder(
            itemCount: hSongList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) => new Card(
                  child: new InkResponse(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          child: new Hero(
                            child: new Image.asset(
                              "images/default_image.webp",
                              height: 120.0,
                              width: 200.0,
                              fit: BoxFit.cover,
                            ),
                            tag: hSongList[i].hTitle,
                          ),
                        ),
                        SizedBox(
                          width: 200.0,
                          child: Padding(
                            // padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                            padding: EdgeInsets.fromLTRB(4.0, 8.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Title here",
                                  style: new TextStyle(fontSize: 18.0),
                                  maxLines: 1,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "Artist Here",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      /*ToDo Add On Tap listener*/
                    },
                  ),
                ));
      }),
    );
  }
}
