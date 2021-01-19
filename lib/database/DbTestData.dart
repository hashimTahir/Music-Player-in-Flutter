/*
 * Copyright (c) 2021/  1/ 19.  Created by Hashim Tahir
 */

import 'package:music_player/models/SongModel.dart';

class DbTestData {
  static List<SongModel> hGetTestData() {
    List<SongModel> hTestSongModelList = [
      SongModel(
          hId: 1,
          hNumber: 1,
          hTitle: "Title 1",
          hDuration: 354,
          hAlbumArt: ""
              "Album Art",
          hAlbum: "Album",
          hUri: "Uri",
          hArtist: "Artist",
          hAlbumId: 1,
          hIsFav: true,
          hTimeStamp: "4356",
          hCount: 1),
      SongModel(
          hId: 2,
          hNumber: 2,
          hTitle: "Title 2",
          hDuration: 352,
          hAlbumArt: "Album Art1",
          hAlbum: "Album1",
          hUri: "Uri1",
          hArtist: "Artist1",
          hAlbumId: 2,
          hIsFav: true,
          hTimeStamp: "4356",
          hCount: 2),
      SongModel(
          hId: 3,
          hNumber: 4,
          hTitle: "Title 4",
          hDuration: 35456,
          hAlbumArt: "Album Art2",
          hAlbum: "Album2",
          hUri: "Uri2",
          hArtist: "Artist2",
          hAlbumId: 3,
          hIsFav: true,
          hTimeStamp: "433",
          hCount: 3),
    ];
    return hTestSongModelList;
  }
}
