/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'Locator.config.dart';

final locator = GetIt.instance;


/*Used to injection dependencies.*/
@injectableInit
void hSetupLocator() => $initGetIt(locator);
