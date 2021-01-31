/*
 * Copyright (c) 2021/  2/ 1.  Created by Hashim Tahir
 */

import 'package:music_player/app/Locator.dart';
import 'package:music_player/repository/SongsRepository.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  SongsRepository _hSongsRepositroy = locator<LocalRepositoryImpl>();
  NavigationService _navigationService = locator<NavigationService>();

/*Todo  To implement
  *  1-Get songs from db
  * 2-Diplay songs list
  * 3-handle click events
  * */

}
