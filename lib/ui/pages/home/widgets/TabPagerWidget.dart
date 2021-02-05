/*
 * Copyright (c) 2021/  2/ 4.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/utils/Constants.dart';

class TabPagerWidget extends StatefulWidget {
  @override
  _TabPagerWidgetState createState() => _TabPagerWidgetState();
}

class _TabPagerWidgetState extends State<TabPagerWidget>
    with SingleTickerProviderStateMixin {
  TabController _hTabController;

  @override
  void initState() {
    super.initState();
    _hTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _hTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hBuildAppBar(),
      body: hBuidTabPages(),
    );
  }

  Widget hBuildTabBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(10),
      child: TabBar(
        controller: _hTabController,
        isScrollable: true,
        tabs: [
          Text("Home", style: hGetTabsTextStyle()),
          Text("Recent", style: hGetTabsTextStyle()),
          Text("Albums", style: hGetTabsTextStyle()),
          Text("Playlists", style: hGetTabsTextStyle()),
        ],
      ),
    );
  }

  TextStyle hGetTabsTextStyle() {
    return TextStyle(color: Colors.deepOrange, fontSize: 18.0);
  }

  AppBar hBuildAppBar() {
    return AppBar(
      title: Text("Music Player"),
      leading: SvgPicture.asset(
          'images/headset.svg',
      ),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: hOnSearchPressed)
      ],
      titleTextStyle: TextStyle(color: Colors.red, fontSize: 20.0),
      bottom: hBuildTabBar(),
    );
  }

  Widget hBuidTabPages() {
    return TabBarView(
      controller: _hTabController,
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
    );
  }

  void hOnSearchPressed() {
    Constants.hLogger.d("Search Clicked");
  }
}
