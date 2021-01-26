/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */


/*Thats how we create an interface in Dart*/
import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/models/SongModel.dart';

class SongsRepository {
  hAddSong(Song songModel) {}

  Future<List<SongModel>> hGetAllSongs() {}

  Future<int> hUpdateSong(SongModel model) {}

  Future<int> hDeleteSong(SongModel model) {}

  Future<bool> hHasSongsInDb() {}
}
