import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String detailsPage = '/detail';
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (context, parameters) => {
        print('error:: not find router');
      },
    );
    router.define(detailsPage, handler: detailsHandler);
    router.define(root, handler: rootHandler);
  }
}
