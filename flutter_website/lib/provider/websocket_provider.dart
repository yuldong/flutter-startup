import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/foundation.dart';
import '../utils/random_string.dart';
import '../conf/configure.dart';

class WebSocketProvider with ChangeNotifier {
  var userId = '';
  var userName = '';
  var messages = [];
  IOWebSocketChannel channel;

  init() async {
    userId = '';
    userName = '';
    return await createWebsocket();
  }

  createWebsocket() async {
    channel = IOWebSocketChannel.connect('url');
    var message = {'type': 'joinRoom', 'userId': userId, 'userName': userName};

    String text = json.encode(message).toString();
    channel.sink.add(text);

    channel.stream.listen((data) {
      var message = jsonEncode(data);
      print('receive message:' + data);
      if (data['type'] == 'chat_public') {
        messages.insert(0, message);
      }
      notifyListeners();
    }, onDone: () {
      print('done');
    }, onError: (error) {
      print('error: $error');
    });
  }

  void sendMessage(type, data) {
    var message = {
      'type': 'chat_public',
      'userId': userId,
      'userName': userName,
      'msg': data
    };

    String text = json.encode(message).toString();
    print('send message:' + text);
    channel.sink.add(text);
  }

  void closeWebSocket() {
    channel.sink.close();
    print('关闭WebSocket');
    notifyListeners();
  }
}
