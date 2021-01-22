/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */

/*Stacked */
/*StateManagement
* Navigation
* Inversion of Control i.e. Di
* Data Models*/

import 'package:music_player/app/Locator.dart';
import 'package:music_player/app/Router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestViewModel1 extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  String _title = 'Start up Test Page';

  String get title => '$_title';

  Future hNavigateToTestPage() async {
    await _navigationService.navigateTo(Routes.testPage);
  }
}
