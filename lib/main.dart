/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fimber/fimber_base.dart';
import 'package:flutter/material.dart';
import 'package:music_player/database/DbConstants.dart';
import 'package:music_player/database/SongsDb.dart';
import 'package:music_player/pages/SplashPage.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/SongDto.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(HmusicApp());
}

class HmusicApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    var hquery = DbConstants.H_CREATE_SONGS_TABLE_QUERY;
    var hquery1 = DbConstants.H_CREATE_RECENTS_TABLE_QUERY;
    Constants.hLogger.d("Create $hquery");
    Constants.hLogger.d("Recent $hquery1");

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
            ),
          );
        });
  }
}
