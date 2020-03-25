import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MaterialApp(
    debugShowMaterialGrid: false,
    title: "聊天室",
    theme: mDefaultTheme,
    routes: <String, WidgetBuilder>{
      "app": (BuildContext context) => App(),
      "/friend": (_) => WebviewScaffold(
            url: "https://flutter.io",
            appBar: AppBar(title: Text("Flutter官网")),
          ),
      "search": (BuildContext context) => Search()
    },
    home: LoadingPage()));

final ThemeData mDefaultTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Colors.green);
