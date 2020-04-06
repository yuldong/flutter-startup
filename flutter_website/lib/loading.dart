import 'package:flutter/material.dart';
import 'dart:async';
import 'router/application.dart';

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingState();
  }
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Application.router.navigateTo(context, '/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: <Widget>[
        Image.asset('images/loading.png'),
        Positioned(
          top: 100,
          child: Container(
            width: 400,
            child: Text(
              'Flutter 企业站',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  decoration: TextDecoration.none),
            ),
          ),
        )
      ],
    ));
  }
}
