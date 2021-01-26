/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fimber/fimber_base.dart';
/*Use hide to remove the conflicting imports for router.*/
import 'package:flutter/material.dart' hide Router;
import 'package:music_player/app/Locator.dart';
import 'package:music_player/app/Router.gr.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stacked_services/stacked_services.dart';

import 'models/SongDto.dart';

void main() {
  Fimber.plantTree(DebugTree());
  hSetupLocator();
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

              /*Use navigation as part of stacked mvvm*/
              initialRoute: Routes.splashPage,
              onGenerateRoute: Router(),
              navigatorKey: StackedService.navigatorKey,
            ),
          );
        });
  }
}
