import 'package:flutter/material.dart';

class WebSocketProvider with ChangeNotifier {
  void init() {
    notifyListeners();
  }
}
