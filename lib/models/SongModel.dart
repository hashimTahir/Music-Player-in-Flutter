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
    hId = map[DbConstants.H_ID_COL];
    hDuration = map[DbConstants.H_DURATION_COL];
    hTitle = map[DbConstants.H_TITLE_COL];
    hAlbumArt = map[DbConstants.H_ALBUM_ART_COL];
    hAlbum = map[DbConstants.H_ALBUM_COL];
    hAlbumId = map[DbConstants.H_ALBUM_ID_COL];
    hUri = map[DbConstants.H_URI_COL];
    hTimeStamp = map[DbConstants.H_TIME_STAMP_COL];
    hArtist = map[DbConstants.H_ARTIST_COL];
    hIsFav = map[DbConstants.H_IS_FAV_COL];
    hCount = map[DbConstants.H_COUNT__COL];
  }
}
