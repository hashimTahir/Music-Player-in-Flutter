/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:music_player/models/SongModel.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/database/DbConstants.dart';
import 'package:music_player/repository/database/SongsDb.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:sqflite/sqflite.dart';

/*Todo: Later add dependency Injection*/
class LocalRepositoryImpl implements SongsRepository {
  Future<Database> songsDb = SongsDb.hSongsDb.hDataBase;

  @override
  hAddSong(SongModel songModel) async {
    try {
      final db = await songsDb;
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
}
