/*
 * Copyright (c) 2021/  2/ 4.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabPagerWidget extends StatefulWidget {
  @override
  _TabPagerWidgetState createState() => _TabPagerWidgetState();
}

class _TabPagerWidgetState extends State<TabPagerWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Music Player"),
            bottom: TabBar(
              tabs: [
                Text("Home"),
                Text("Recent"),
                Text("Albums"),
                Text("Playlists"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Home"),
              ),
              Center(
                child: Text("Recent"),
              ),
              Center(
                child: Text("Albums"),
              ),
              Center(
                child: Text("Playlists"),
              )
            ],
          ),
        ));
  }
}
