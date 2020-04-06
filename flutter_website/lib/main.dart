import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import 'loading.dart';
import 'provider/current_index_provider.dart';
import 'provider/product_detail_provider.dart';
import 'provider/product_provider.dart';
import 'provider/websocket_provider.dart';

import 'router/application.dart';
import 'router/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MultiProvider(
      providers: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter企业站实战',
        theme: mDefaultTheme,
        onGenerateRoute: Application.router.generator,
        home: LoadingPage(),
      ),
    );
  }
}

final ThemeData mDefaultTheme = ThemeData(primaryColor: Colors.redAccent);
