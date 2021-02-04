/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongModel.dart';
import 'package:music_player/ui/pages/home/HomeViewModel.dart';
import 'file:///C:/Users/HP/Desktop/Hashim/music_player/lib/ui/pages/home/widgets/ListSongItem.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, hHomeViewModel, child) =>
            Container(child: hSetSongs(hHomeViewModel.hAllSongs)),
        viewModelBuilder: () => HomeViewModel());
  }

  hSetSongs(List<SongModel> hAllSongs) {
    if (hAllSongs == null) {
      return CircularProgressIndicator();
    } else {
      Constants.hLogger.d("List size ${hAllSongs.length}");
      return ListView.builder(
          itemCount: hAllSongs.length,
          itemBuilder: (context, index) {
            return ListSongItem(hSongModel: hAllSongs[index], onClick: () {});
          });
    }
  }
}
