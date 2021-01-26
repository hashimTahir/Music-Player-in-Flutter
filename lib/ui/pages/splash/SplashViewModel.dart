/*
 * Copyright (c) 2021/  1/ 26.  Created by Hashim Tahir
 */

import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/app/Locator.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  SongsRepository _hSongsRepositroy = locator<LocalRepositoryImpl>();
  bool _hIsLoading = false;
  bool get hIsLoading => _hIsLoading;

  SplashViewModel() {
    _hIsLoading = true;


    /*Todo
    *  Present loading view
    * create db or get songs from db
    * find device songs populate the db with missing songs / add all songs.
    * remove loading page.
    * move to next page.
    * */


    Constants.hLogger.d("View Model initilized.");
    if (_hSongsRepositroy == null) {
      Constants.hLogger.d("Song repo  null");
    } else {
      Constants.hLogger.d("Song repo not null");
    }
  }

  void hFindSongs() async {
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
