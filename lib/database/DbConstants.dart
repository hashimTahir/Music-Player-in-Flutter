/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */


class DbConstants {
  static const String H_DB_NAME = "songs.db";


  /*Tables Name*/
  static const String H_SONGS_TABLE_NAME = "songs";
  static const String H_RECENTS_TABLE_NAME = "recents";

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
  static const String H_COUNT__COL = "count";
  static const String H_IS_FAV_COL = "isFav";

  ///////////////////////////////////////////
  /*Db Queries*/
  static const String H_CREATE_SONGS_TABLE_QUERY = """CREATE TABLE 
         ${DbConstants.H_SONGS_TABLE_NAME}
         (${DbConstants.H_ID_COL} integer primary key autoincrement, 
         ${DbConstants.H_TITLE_COL} TEXT, 
         ${DbConstants.H_DURATION_COL} NUMBER, 
         ${DbConstants.H_ALBUM_ART_COL} TEXT,
          ${DbConstants.H_ALBUM_COL} TEXT,
         ${DbConstants.H_URI_COL} TEXT, 
         ${DbConstants.H_ARTIST_COL} TEXT, 
         ${DbConstants.H_ALBUM_ID_COL} NUMBER, 
         ${DbConstants.H_IS_FAV_COL} number NOT NULL default 0,
       ${DbConstants.H_TIME_STAMP_COL} number, 
       ${DbConstants.H_COUNT__COL} number not null default 0)""";


  static const String H_CREATE_RECENTS_TABLE_QUERY = """CREATE TABLE 
        ${DbConstants.H_RECENTS_TABLE_NAME}(
        ${DbConstants.H_ID_COL} integer primary key autoincrement,
        ${DbConstants.H_TITLE_COL} TEXT,
        ${DbConstants.H_DURATION_COL} NUMBER, 
        ${DbConstants.H_ALBUM_ART_COL} TEXT, 
        ${DbConstants.H_ALBUM_COL} TEXT,
        ${DbConstants.H_URI_COL} TEXT, 
        ${DbConstants.H_ARTIST_COL} TEXT,
        ${DbConstants.H_ALBUM_ID_COL} NUMBER)""";

}