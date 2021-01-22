/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fimber/fimber_base.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'file:///C:/Users/HP/Desktop/Hashim/music_player/lib/ui/pages/home/HomePage.dart';
import 'file:///C:/Users/HP/Desktop/Hashim/music_player/lib/ui/pages/playlist/PlaylistPage.dart';
import 'file:///C:/Users/HP/Desktop/Hashim/music_player/lib/ui/pages/songdetail/SongDetailPage.dart';

import 'Navigation/Routes.dart';
import 'models/SongDto.dart';
import 'ui/pages/splash/SplashPage.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(HmusicApp());
}

class HmusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (bri) => new ThemeData(
            primarySwatch: Colors.blue, fontFamily: 'Raleway', brightness: bri),
        themedWidgetBuilder: (context, theme) {
          return ScopedModel<SongDto>(
            model: new SongDto(),
            child: new MaterialApp(
              title: 'Music Player',
              theme: theme,
              debugShowCheckedModeBanner: false,
              home: SplashPage(),
              routes: hSetRoutes(),
            ),
          );
        });
  }

  Map<String, WidgetBuilder> hSetRoutes() {
    return {
      Routes.hPlaylistRoute: (context) => PlaylistPage(),
      Routes.hHomeRoute: (context) => HomePage(),
      Routes.hSongDetailRoute: (context) => SongDetailPage(),
      Routes.hSongDetailRoute: (context) => SongDetailPage(),
    };
  }
}
