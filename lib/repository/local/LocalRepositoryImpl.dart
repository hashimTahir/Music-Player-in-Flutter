/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/models/SongMapper.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/database/DbConstants.dart';
import 'package:music_player/repository/database/SongsDb.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:sqflite/sqflite.dart';

class LocalRepositoryImpl implements SongsRepository {
  Future<Database> songsDb = SongsDb.hSongsDb.hDataBase;

  @override
  hAddSong(Song song) async {
    SongModel hSongModel = SongMapper.hMapSongToModel(song);

    try {
      final db = await songsDb;

      int id = 0;
      var count = Sqflite.firstIntValue(await db.rawQuery(
          "SELECT COUNT(*) FROM songs WHERE id = ?", [hSongModel.hId]));
      if (count == 0) {
        id = await hInsertSong(hSongModel);
      } else {
        id = await hUpdateSong(hSongModel);
      }
      return id;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  @override
  Future<int> hDeleteSong(SongModel model) async {
    try {
      final db = await songsDb;

      int h = await db.delete(DbConstants.H_CREATE_SONGS_TABLE_Q,
          where: '${DbConstants.H_ID_COL}=?', whereArgs: [model.hId]);
      return h;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  @override
  Future<List<SongModel>> hGetAllSongs() async {
    try {
      final db = await songsDb;

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

  @override
  Future<int> hUpdateSong(SongModel model) async {
    try {
      final db = await songsDb;

      int h = await db.update(DbConstants.H_SONGS_TABLE, model.toMap(),
          where: '${DbConstants.H_ID_COL}=?', whereArgs: [model.hId]);

      return h;
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  @override
  Future<bool> hHasSongsInDb() async {
    try {
      final db = await songsDb;
      var count =
          Sqflite.firstIntValue(await db.rawQuery(DbConstants.H_GET_COUNT_Q));
      if (count > 0) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      Constants.hLogger.d("Exception ${e}");
    }
  }

  Future<int> hInsertSong(SongModel hSongModel) async {
    final db = await songsDb;
    var raw = db.rawInsert(DbConstants.H_INSERT_SONG_Q, [
      hSongModel.hId,
      hSongModel.hDuration,
      hSongModel.hTitle,
      hSongModel.hAlbumArt,
      hSongModel.hAlbum,
      hSongModel.hUri,
      hSongModel.hAlbumId,
      hSongModel.hArtist,
      hSongModel.hTimeStamp,
      hSongModel.hCount,
      hSongModel.hIsFav
    ]);
    return raw;
  }
}
