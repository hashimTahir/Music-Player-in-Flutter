/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/utils/TestData.dart';

import 'AvatarWidget.dart';

class SearchSongWidget extends StatelessWidget {
  List<SongModel> hSongList = TestData.hGetTestData4();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: FloatingSearchBar.builder(
          itemCount: hSongList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: new Hero(
                tag: hSongList[index].hTitle,
                child: AvatarWidget(hSongList[index]),
              ),
              title: new Text('Song Title here'),
              subtitle: new Text("SubTitle here"),
              trailing: new Text(
                  new Duration(milliseconds: 44).toString().split('.').first,
                  style: new TextStyle(fontSize: 12.0, color: Colors.grey)),
              onTap: () {
                /*Todo On Tap Listener */
              },
            );
          },
          trailing: Icon(Icons.search),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                /*Todo On pressed*/
              }),
          decoration: InputDecoration.collapsed(
            hintText: "Search song, artist or album",
          ),
        ),
      ),
    );
  }
}
