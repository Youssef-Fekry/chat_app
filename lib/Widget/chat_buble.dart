// ignore_for_file: prefer_const_constructors

import 'package:chat_app_with_api/constans.dart';
import 'package:flutter/material.dart';

class ChatBubles extends StatelessWidget {
  const ChatBubles({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 65,
        width: 150,
        padding: EdgeInsets.only(left: 16),
        margin: EdgeInsets.all(16),
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
            'new message afssss',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
