/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'dart:async';
import 'dart:io';

import 'package:music_player/database/DbConstants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  Database hDataBase;

  Future hInitDb() async {
    Directory hPathdirectroy = await getApplicationDocumentsDirectory();

    String hDbpath = join(hPathdirectroy.path, DbConstants.H_DB_NAME);
    hDataBase =
        await openDatabase(hDbpath, version: 1, onCreate: hCreateTables);
  }

  Future hCreateTables(Database db, int version) async {
    await db.execute(DbConstants.H_CREATE_SONGS_TABLE_QUERY);

    await db.execute(DbConstants.H_CREATE_RECENTS_TABLE_QUERY);
  }
}
