import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  bool isMe = false;

  String userName;
  String message;
  String createAt;

  ChatMessage(this.userName, this.message, this.createAt);

  @override
  Widget build(BuildContext context) {
    if (isMe) {

    } else {
      
    }
  }
}
