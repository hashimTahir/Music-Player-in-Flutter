/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'dart:convert';

import 'package:music_player/database/DbConstants.dart';

class   SongModel {
  int hId;
  String hTitle;
  int hDuration;
  String hAlbumArt;
  String hAlbum;
  String hUri;
  String hArtist;
  int hAlbumId;
  int hIsFav;
  String hTimeStamp;
  int hCount;

  SongModel({
    this.hId,
    this.hTitle,
    this.hDuration,
    this.hAlbumArt,
    this.hAlbum,
    this.hUri,
    this.hArtist,
    this.hAlbumId,
    this.hIsFav,
    this.hTimeStamp,
    this.hCount,
  });

  SongModel hSongFromJson(String str) {
    final jsonData = json.decode(str);
    return SongModel.fromMap(jsonData);
  }

  String hSongToJson(SongModel songModel) {
    final dyn = songModel.toMap();
    return json.encode(dyn);
  }

  SongModel.fromMap(Map<String, dynamic> json) {
    hId = json[DbConstants.H_ID_COL];
    hDuration = json[DbConstants.H_DURATION_COL];
    hTitle = json[DbConstants.H_TITLE_COL];
    hAlbumArt = json[DbConstants.H_ALBUM_ART_COL];
    hAlbum = json[DbConstants.H_ALBUM_COL];
    hAlbumId = json[DbConstants.H_ALBUM_ID_COL];
    hUri = json[DbConstants.H_URI_COL];
    hTimeStamp = json[DbConstants.H_TIME_STAMP_COL].toString();
    hArtist = json[DbConstants.H_ARTIST_COL];
    hIsFav = json[DbConstants.H_IS_FAV_COL];
    hCount = json[DbConstants.H_COUNT_COL];
  }

  Map<String, dynamic> toMap() => {
        DbConstants.H_ID_COL: hId,
        DbConstants.H_DURATION_COL: hDuration,
        DbConstants.H_TITLE_COL: hTitle,
        DbConstants.H_ALBUM_ART_COL: hAlbumArt,
        DbConstants.H_ALBUM_COL: hAlbum,
        DbConstants.H_ALBUM_ID_COL: hAlbumId,
        DbConstants.H_URI_COL: hUri,
        DbConstants.H_TIME_STAMP_COL: hTimeStamp,
        DbConstants.H_ARTIST_COL: hArtist,
        DbConstants.H_IS_FAV_COL: hIsFav,
        DbConstants.H_COUNT_COL: hCount,
      };
}
