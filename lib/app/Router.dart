/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */
import 'package:auto_route/auto_route_annotations.dart';
import 'package:music_player/ui/pages/test/TestPage.dart';
import 'package:music_player/ui/pages/test2/TestPage1.dart';

/*The $ sign in the class name is very important because the router
* which is generated is without the $ sign, and that is the one, which will
* be used
*
*> use 'flutter pub run build_runner build'  commad to generte the files
**/
@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: TestPage, initial: true),
    MaterialRoute(page: TestPage1,),
  ],
)
class $Router {}
