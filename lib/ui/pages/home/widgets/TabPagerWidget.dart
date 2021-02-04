/*
 * Copyright (c) 2021/  2/ 4.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class TabPagerWidget extends StatefulWidget {
  @override
  _TabPagerWidgetState createState() => _TabPagerWidgetState();
}

class _TabPagerWidgetState extends State<TabPagerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: hBuildAppBar(),
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [hBuildFloatingSearchBar(),hBuildTabController()],
        ));
  }

  Widget hBuildTabController() {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: hBuildTabBar(),
          resizeToAvoidBottomInset: true,
          body: hBuildTabBarView(),
        ));
  }

  Widget hBuildTabBar() {
    return TabBar(
      tabs: [
        Text("Home"),
        Text("Recent"),
        Text("Albums"),
        Text("Playlists"),
      ],
    );
  }

  Widget hBuildTabBarView() {
    TabBarView(
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

  TabBarView hBuildTabBarPages() {
    return TabBarView(
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

  AppBar hBuildAppBar() {
    return AppBar(
      title: Text("Music Player"),
      titleTextStyle: TextStyle(color: Colors.pink, fontSize: 20.0),

      // bottom: TabBar(
      //   tabs: [
      //     Text("Home"),
      //     Text("Recent"),
      //     Text("Albums"),
      //     Text("Playlists"),
      //   ],
      // ),
    );
  }

  Widget hBuildFloatingSearchBar() {
    return hBuildSearchBar();
  }

  Widget hBuildSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Expanded(
      child: FloatingSearchBar(
        hint: 'Search...',
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        openAxisAlignment: 0.0,
        maxWidth: isPortrait ? 600 : 500,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {
          // Call your model, bloc, controller here.
        },
        // Specify a custom transition to be used for
        // animating between opened and closed stated.
        transition: CircularFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction(
            showIfOpened: false,
            child: CircularButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: Colors.accents.map((color) {
                  return Container(height: 112, color: color);
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
