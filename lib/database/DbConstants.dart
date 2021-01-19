/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */


class DbConstants {
  static const String H_DB_NAME = "songs.db";


  /*Tables Name*/
  static const String H_SONGS_TABLE_NAME = "songs";
  static const String H_RECENTS_TABLE_NAME = "recents";

//////////////////////////////////////////////
  /*Rows name*/
  static const String H_ID_ROW = "id";
  static const String H_DURATION_ROW = "duration";
  static const String H_TITLE_ROW = "title";
  static const String H_ALBUM_ART_ROW = "albumArt";
  static const String H_ALBUM_ROW = "album";
  static const String H_URI_ROW = "uri";
  static const String H_ALBUM_ID_ROW = "albumId";
  static const String H_ARTIST_ROW = "artist";
  static const String H_TIME_STAMP_ROW = "timestamp";
  static const String H_COUNT_ROW = "count";
  static const String H_IS_FAV_ROW = "isFav";

  ///////////////////////////////////////////
  /*Db Queries*/
  static const String H_CREATE_SONGS_TABLE_QUERY = """CREATE TABLE 
         ${DbConstants.H_SONGS_TABLE_NAME}
         (${DbConstants.H_ID_ROW} NUMBER, 
         ${DbConstants.H_TITLE_ROW} TEXT, 
         ${DbConstants.H_DURATION_ROW} NUMBER, 
         ${DbConstants.H_ALBUM_ART_ROW} TEXT,
          ${DbConstants.H_ALBUM_ROW} TEXT,
         ${DbConstants.H_URI_ROW} TEXT, 
         ${DbConstants.H_ARTIST_ROW} TEXT, 
         ${DbConstants.H_ALBUM_ID_ROW} NUMBER, 
         ${DbConstants.H_IS_FAV_ROW} number NOT NULL default 0,
       ${DbConstants.H_TIME_STAMP_ROW} number, 
       ${DbConstants.H_COUNT_ROW} number not null default 0)""";


  static const String H_CREATE_RECENTS_TABLE_QUERY = """CREATE TABLE 
        ${DbConstants.H_RECENTS_TABLE_NAME}(
        ${DbConstants.H_ID_ROW} integer primary key autoincrement,
        ${DbConstants.H_TITLE_ROW} TEXT,
        ${DbConstants.H_DURATION_ROW} NUMBER, 
        ${DbConstants.H_ALBUM_ART_ROW} TEXT, 
        ${DbConstants.H_ALBUM_ROW} TEXT,
        ${DbConstants.H_URI_ROW} TEXT, 
        ${DbConstants.H_ARTIST_ROW} TEXT,
        ${DbConstants.H_ALBUM_ID_ROW} NUMBER)""";

}