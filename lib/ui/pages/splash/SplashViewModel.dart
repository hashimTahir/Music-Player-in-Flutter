/*
 * Copyright (c) 2021/  1/ 26.  Created by Hashim Tahir
 */

import 'package:music_player/app/Locator.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:music_player/utils/Constants.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  SongsRepository hSongsRepositroy = locator<LocalRepositoryImpl>();

  SplashViewModel() {
    Constants.hLogger.d("View Model initilized.");
    if (hSongsRepositroy == null) {
      Constants.hLogger.d("Song repo  null");
    } else {
      Constants.hLogger.d("Song repo not null");
    }
  }
}
