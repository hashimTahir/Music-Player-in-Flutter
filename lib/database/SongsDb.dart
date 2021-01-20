/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'dart:io';

import 'package:music_player/models/SongModel.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'DbConstants.dart';

class SongsDb {
  /*
  Dart Dosent has privat or public keywords
  If an identifier starts with an underscore _, it’s private to its library.*/

  /*Private constructor*/
  SongsDb._();

  static final SongsDb hSongsDb = SongsDb._();

  Database _hDatabase;

  Future<Database> get hDataBase async {
    if (_hDatabase != null) {
      return _hDatabase;
    }
    return await _hInitDb();
  }

  Future<Database> _hInitDb() async {
    Directory hPathdirectroy = await getApplicationDocumentsDirectory();

    String hDbpath = join(hPathdirectroy.path, DbConstants.H_DB_NAME);

    return await openDatabase(hDbpath, version: 1, onCreate: _hCreateTables);
  }

  Future _hCreateTables(Database db, int version) async {
    try {
      await db.execute(DbConstants.H_CREATE_SONGS_TABLE_Q);

      await db.execute(DbConstants.H_CREATE_RECENTS_TABLE_Q);
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  hAddSong(SongModel songModel) async {
    try {
      final db = await hDataBase;
      var raw = db.rawInsert(DbConstants.H_INSERT_SONG_Q, [
        songModel.hId,
        songModel.hDuration,
        songModel.hTitle,
        songModel.hAlbumArt,
        songModel.hAlbum,
        songModel.hUri,
        songModel.hAlbumId,
        songModel.hArtist,
        songModel.hTimeStamp,
        songModel.hCount,
        songModel.hIsFav
      ]);
      return raw;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  Future<List<SongModel>> hGetAllSongs() async {
    try {
      final db = await hDataBase;

      List<Map<String, dynamic>> hList =
          await db.query(DbConstants.H_SONGS_TABLE);
      List<SongModel> hSongModelList = List.empty(growable: true);
      hList.forEach((element) {
        hSongModelList.add(SongModel.fromMap(element));
      });
      return hSongModelList;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  Future<int> hUpdateSong(SongModel model) async {
    try {
      final db = await hDataBase;

      int h = await db.update(DbConstants.H_SONGS_TABLE, model.toMap(),
          where: '${DbConstants.H_ID_COL}=?', whereArgs: [model.hId]);

      return h;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  Future<int> hDeleteSong(SongModel model) async {
    try {
      final db = await hDataBase;

      int h = await db.delete(DbConstants.H_CREATE_SONGS_TABLE_Q,
          where: '${DbConstants.H_ID_COL}=?', whereArgs: [model.hId]);
      return h;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }
}
