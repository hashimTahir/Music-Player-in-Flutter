/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:music_player/models/SongModel.dart';

/*Thats how we create an interface in Dart*/
class SongsRepository {
  hAddSong(SongModel songModel) {}

  Future<List<SongModel>> hGetAllSongs() {}

  Future<int> hUpdateSong(SongModel model) {}

  Future<int> hDeleteSong(SongModel model) {}
}
