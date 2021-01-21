/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/utils/TestData.dart';

class SplashViewModel extends ChangeNotifier {
  List<SongModel> hSongsList = List.empty(growable: true);

  hFetchSongs() async {

    hSongsList = await TestData.hGetTestData3();

    notifyListeners();
  }
}
