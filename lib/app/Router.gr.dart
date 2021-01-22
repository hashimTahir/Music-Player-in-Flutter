// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/pages/test/TestPage.dart';
import '../ui/pages/test2/TestPage1.dart';

class Routes {
  static const String testPage = '/';
  static const String testPage1 = '/test-page1';
  static const all = <String>{
    testPage,
    testPage1,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.testPage, page: TestPage),
    RouteDef(Routes.testPage1, page: TestPage1),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    TestPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TestPage(),
        settings: data,
      );
    },
    TestPage1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TestPage1(),
        settings: data,
      );
    },
  };
}
