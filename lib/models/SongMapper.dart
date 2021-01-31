/*
 * Copyright (c) 2021/  1/ 27.  Created by Hashim Tahir
 */
import 'package:flute_music_player/flute_music_player.dart';
import 'package:music_player/models/SongModel.dart';

class SongMapper {
  static SongModel hMapSongToModel(Song song) {
    SongModel hSongModel = SongModel();
    hSongModel.hTitle = song.title;
    hSongModel.hUri = song.uri;
    hSongModel.hDuration = song.duration;
    hSongModel.hArtist = song.artist;
    hSongModel.hAlbum = song.album;
    hSongModel.hAlbumArt = song.albumArt;
    hSongModel.hId = song.id;
    hSongModel.hIsFav = 0;
    hSongModel.hCount = 0;
    return hSongModel;
  }
}
