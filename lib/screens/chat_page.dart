import 'package:chat_app_with_api/constans.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              height: 50, 
            ),
            Text(
              'scholarchat',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        
      ),
    );
  }
}
