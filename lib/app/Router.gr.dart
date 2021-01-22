// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/pages/test/TestPage.dart';
import '../ui/pages/test2/StartupTestPage.dart';

class Routes {
  static const String startupTestPage = '/';
  static const String testPage = '/test-page';
  static const all = <String>{
    startupTestPage,
    testPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupTestPage, page: StartupTestPage),
    RouteDef(Routes.testPage, page: TestPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupTestPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupTestPage(),
        settings: data,
      );
    },
    TestPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TestPage(),
        settings: data,
      );
    },
  };
}
