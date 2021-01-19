/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:music_player/pages/SplashPage.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/SongDto.dart';

void main() {
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
          return ScopedModel<SongModel>(
            model: new SongModel(),
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
