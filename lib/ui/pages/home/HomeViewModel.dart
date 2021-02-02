/*
 * Copyright (c) 2021/  2/ 1.  Created by Hashim Tahir
 */

import 'package:music_player/app/Locator.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  //Private fields
  SongsRepository _hSongsRepositroy = locator<LocalRepositoryImpl>();
  NavigationService _navigationService = locator<NavigationService>();
  List<SongModel> _hAllSongs;

  //Public getters
  List<SongModel> get hAllSongs => _hAllSongs;
  List<SongModel> _FavSongs;

  HomeViewModel() {
    _hGetSongs();
  }

  _hGetSongs() async {
    _hAllSongs = await _hSongsRepositroy.hGetAllSongs();
    _FavSongs = await _hSongsRepositroy.hGetFavouriteSongs();
    Constants.hLogger.d("AllSongs list size${hAllSongs.length}");
    Constants.hLogger.d("Fav list size${_FavSongs.length}");
  }

  List<SongModel> get FavSongs => _FavSongs;
}
