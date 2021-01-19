/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'package:music_player/database/DbConstants.dart';

class SongModel {
  int hId;
  int hNumber;
  String hTitle;
  int hDuration;
  String hAlbumArt;
  String hAlbum;
  String hUri;
  String hArtist;
  int hAlbumId;
  bool hIsFav;
  String hTimeStamp;
  int hCount;

  SongModel.fromMap(Map map) {
    hId = map[DbConstants.H_ID_ROW];
    hDuration = map[DbConstants.H_DURATION_ROW];
    hTitle = map[DbConstants.H_TITLE_ROW];
    hAlbumArt = map[DbConstants.H_ALBUM_ART_ROW];
    hAlbum = map[DbConstants.H_ALBUM_ROW];
    hAlbumId = map[DbConstants.H_ALBUM_ID_ROW];
    hUri = map[DbConstants.H_URI_ROW];
    hTimeStamp = map[DbConstants.H_TIME_STAMP_ROW];
    hArtist = map[DbConstants.H_ARTIST_ROW];
    hIsFav = map[DbConstants.H_IS_FAV_ROW];
    hCount = map[DbConstants.H_COUNT_ROW];
  }
}
