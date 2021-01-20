/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

class DbConstants {
  static const String H_DB_NAME = "songs.db";

  /*Tables Name*/
  static const String H_SONGS_TABLE = "songs";
  static const String H_RECENTS_TABLE = "recents";

//////////////////////////////////////////////
  /*Columns names name*/
  static const String H_ID_COL = "id";
  static const String H_DURATION_COL = "duration";
  static const String H_TITLE_COL = "title";
  static const String H_ALBUM_ART_COL = "albumArt";
  static const String H_ALBUM_COL = "album";
  static const String H_URI_COL = "uri";
  static const String H_ALBUM_ID_COL = "albumId";
  static const String H_ARTIST_COL = "artist";
  static const String H_TIME_STAMP_COL = "timestamp";
  static const String H_COUNT_COL = "count";
  static const String H_IS_FAV_COL = "isFav";

  ///////////////////////////////////////////
  /*  Create table Queries*/
  static const String H_CREATE_SONGS_TABLE_Q = "CREATE TABLE ${H_SONGS_TABLE} ("
      "${H_ID_COL} INTEGER PRIMARY KEY,"
      "${H_TITLE_COL} TEXT,"
      "${H_DURATION_COL} NUMBER,"
      "${H_ALBUM_ART_COL} TEXT,"
      "${H_ALBUM_COL} TEXT,"
      "${H_URI_COL} TEXT,"
      "${H_ARTIST_COL} TEXT,"
      "${H_ALBUM_ID_COL} NUMBER,"
      "${H_IS_FAV_COL} NUMBER NOT NULL DEFAULT 0,"
      "${H_TIME_STAMP_COL} NUMBER,"
      "${H_COUNT_COL} NUMBER NOT NULL DEFAULT 0)";

  static const String H_CREATE_RECENTS_TABLE_Q =
      "CREATE TABLE ${H_RECENTS_TABLE} ("
      "${H_ID_COL} INTEGER PRIMARY KEY,"
      "${H_TITLE_COL} TEXT,"
      "${H_DURATION_COL} NUMBER,"
      "${H_ALBUM_ART_COL} TEXT,"
      "${H_ALBUM_COL} TEXT,"
      "${H_URI_COL} TEXT, "
      "${H_ARTIST_COL} TEXT,"
      "${H_ALBUM_ID_COL} NUMBER)";

  static String H_INSERT_SONG_Q =
      'INSERT INTO ${H_SONGS_TABLE}(${H_ID_COL}, ${H_DURATION_COL}, '
      '${H_TITLE_COL}, ${H_ALBUM_ART_COL}, ${H_ALBUM_COL}, ${H_URI_COL}, '
      '${H_ALBUM_ID_COL}, ${H_ARTIST_COL}, ${H_TIME_STAMP_COL}, '
      '${H_COUNT_COL}, ${H_IS_FAV_COL}) VALUES(?,?,?,?,?,?,?,?,?,?,?);';
}
