/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */

import 'package:injectable/injectable.dart';
import 'package:music_player/repository/local/LocalRepositoryImpl.dart';
import 'package:stacked_services/stacked_services.dart';

/*Dependencies injection can be used directly from view model. to delegate
the action to the view*/
@module
abstract class ServicesModule {
  @lazySingleton
  NavigationService get navigationService;

  @lazySingleton
  DialogService get dialogService;

  @lazySingleton
  SnackbarService get snackBarService;

  @lazySingleton
  BottomSheetService get bottomSheetService;

  @lazySingleton
  LocalRepositoryImpl get localRepositoryImpl;
}
