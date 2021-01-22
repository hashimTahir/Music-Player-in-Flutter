/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */

/*Stacked */
/*StateManagement
* Navigation
* Inversion of Control i.e. Di
* Data Models*/

import 'package:stacked/stacked.dart';

class TestViewModel extends BaseViewModel {
  String _title = 'Test view';

  String get title => '$_title $_hCounter';

  int _hCounter = 0;

  int get hCounter => _hCounter;

  void hUpdateCounter() {
    _hCounter++;

    /*when notify listeners is called the view model builder will get called in
  * view and view will be regenerated with new data.*/
    notifyListeners();
  }

  /*To customize the default functionality*/
  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
