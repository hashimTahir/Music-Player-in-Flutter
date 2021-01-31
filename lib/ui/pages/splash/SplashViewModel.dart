/*
 * Copyright (c) 2021/  1/ 26.  Created by Hashim Tahir
 */

import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/app/Locator.dart';
import 'package:music_player/app/Router.gr.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

enum Status {
  H_NONE,
  H_CHECKING_DB,
  H_CHECKING_DEVICE,
  H_SONGS_FOUND_DB,
  H_NO_SONGS_FOUND_DB,
  H_SONGS_FOUND_DEVICE,
  H_NO_SONGS_FOUND_DEVICE,
  H_SONGS_ADDED_IN_DB
}
/*Todo To be cleaned up */
class SplashViewModel extends BaseViewModel {
  SongsRepository _hSongsRepositroy = locator<LocalRepositoryImpl>();
  NavigationService _navigationService = locator<NavigationService>();

  bool _hIsLoading = false;
  Status hStatus;

  bool get hIsLoading => _hIsLoading;

  SplashViewModel() {
    _hIsLoading = true;
    hStatus = Status.H_NONE;
    hCheckForLoading();
    hCheckDbForSongs();
  }

  Future<List<Song>> hFindSongs() async {
    hStatus = Status.H_CHECKING_DEVICE;
    hCheckForLoading();
    try {
      var songs = await MusicFinder.allSongs();
      List<Song> list = new List.from(songs);

      if (list == null || list.length == 0) {
        hStatus = Status.H_NO_SONGS_FOUND_DEVICE;
        hCheckForLoading();
        /*Todo No songs in device notify user*/
      } else {
        hStatus = Status.H_SONGS_FOUND_DEVICE;
        hCheckForLoading();
        for (final song in list) {
          _hSongsRepositroy.hAddSong(song);
        }
        /*Todo Goto Home page remove loader*/
        hStatus = Status.H_SONGS_ADDED_IN_DB;
        hCheckForLoading();
      }
      Constants.hLogger.d("List size ${list.length}");
      return list;
    } catch (e) {
      Constants.hLogger.d("Exception  $e");
    }
  }

  Future<bool> hCheckDbForSongs() async {
    Constants.hLogger.d("hCheckDbForSongs");
    hStatus = Status.H_CHECKING_DB;
    hCheckForLoading();
    bool hHasSongsInDb = await _hSongsRepositroy.hHasSongsInDb();
    if (hHasSongsInDb) {
      hStatus = Status.H_SONGS_FOUND_DB;
      hCheckForLoading();
      /*Todo Remove Loding page and move to Home page*/
    } else {
      //  Find Songs and add to db

      hFindSongs();
    }
  }

  void hCheckForLoading() {
    Constants.hLogger.d("status is  ${hStatus.toString()}");

    switch (hStatus) {
      case Status.H_NONE:
      case Status.H_CHECKING_DB:
      case Status.H_CHECKING_DEVICE:
      case Status.H_SONGS_ADDED_IN_DB:
        _hIsLoading = true;
        break;
      case Status.H_SONGS_FOUND_DB:
      case Status.H_NO_SONGS_FOUND_DB:
      case Status.H_SONGS_FOUND_DEVICE:
      case Status.H_NO_SONGS_FOUND_DEVICE:
        _hIsLoading = false;
        hNavigateToHomePage();
        break;
    }
    Constants.hLogger.d("Loading   ${_hIsLoading.toString()}");
  }

  Future hNavigateToHomePage() async {
    await _navigationService.replaceWith(Routes.homePage);
  }
}
