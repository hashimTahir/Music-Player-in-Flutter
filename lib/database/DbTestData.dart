/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'package:music_player/models/SongModel.dart';

class DbTestData {
  static List<SongModel> hGetTestData() {
    List<SongModel> hTestSongModelList = [
      SongModel(
          hId: 1,
          hTitle: 'title_a',
          hDuration: 354,
          hAlbumArt: 'album_art',
          hAlbum: 'album',
          hUri: 'uri',
          hArtist: 'artist',
          hAlbumId: 2,
          hIsFav: 0,
          hTimeStamp: '4356',
          hCount: 4),
      SongModel(
          hId: 2,
          hTitle: 'title_b',
          hDuration: 356,
          hAlbumArt: 'album_art',
          hAlbum: 'album',
          hUri: 'uri',
          hArtist: 'artist',
          hAlbumId: 4,
          hIsFav: 0,
          hTimeStamp: '435',
          hCount: 4),
      SongModel(
          hId: 3,
          hTitle: 'title_c',
          hDuration: 3541,
          hAlbumArt: 'album_art',
          hAlbum: 'album',
          hUri: 'uri',
          hArtist: 'artist',
          hAlbumId: 2,
          hIsFav: 0,
          hTimeStamp: '4356',
          hCount: 4),
    ];
    return hTestSongModelList;
  }
}
