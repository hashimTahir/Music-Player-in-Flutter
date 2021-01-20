/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/utils/Constants.dart';

class SongFinder {
  static void hFindSongs() async {
    Constants.hLogger.d("Find Songs Called.");

    try {
      var songs = await MusicFinder.allSongs();
      List<Song> list = new List.from(songs);
      Constants.hLogger.d("List size ${list.length}");
    } catch (e) {
      Constants.hLogger.d("Exception  $e");
    }
  }
}
