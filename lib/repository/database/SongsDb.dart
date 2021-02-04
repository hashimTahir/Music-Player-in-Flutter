/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'dart:io';

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
      Constants.hLogger.d("Exception $e");
    }
  }
}
