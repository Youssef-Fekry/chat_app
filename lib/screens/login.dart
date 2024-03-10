import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/scholar.png'),
            Text(
              'Scholar Chat',
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'pacifico'),
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            CustomTextFieald(
              hint: 'Email',
            ),
          ],
        ),
      ),
    );
  }
}
