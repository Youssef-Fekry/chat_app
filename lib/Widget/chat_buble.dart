// ignore_for_file: prefer_const_constructors

import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/models/message.dart';
import 'package:flutter/material.dart';

class ChatBubles extends StatelessWidget {
  ChatBubles({super.key, required this.message});

  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 16),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ChatBublesForaFriend extends StatelessWidget {
  ChatBublesForaFriend({super.key, required this.message});

  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 16),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: Color(0xff006d84),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
