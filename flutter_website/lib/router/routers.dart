import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String detailsPage = '/detail';
  static String notFindRouter = '/notFindRouter';
  static void configureRoutes(Router router) {
    // router.notFoundHandler = Handler(
    //   handlerFunc: (context, parameters) => {
    //     // TODO:

    //   },
    // );
    router.define(detailsPage, handler: detailsHandler);
    router.define(root, handler: rootHandler);
  }
}
