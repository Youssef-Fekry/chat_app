import 'package:chat_app_with_api/Widget/custom_button.dart';
import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  static String id = 'SignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Text(
              'Scholar Chat',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24, color: Colors.white, fontFamily: 'pacifico'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieald(
              hint: 'Email',
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextFieald(
              hint: 'Password',
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextFieald(
              hint: 'Confirm Password',
            ),
            SizedBox(
              height: 25,
            ),
            CustomButton(
              label: 'Create Account',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
