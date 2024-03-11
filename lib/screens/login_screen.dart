import 'package:chat_app_with_api/Widget/custom_button.dart';
import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: OrientationBuilder(builder: (context, orientation) {
          return Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(
                flex: 1,
              ),
              Image.asset('assets/images/scholar.png'),
              Text(
                'Scholar Chat',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24, color: Colors.white, fontFamily: 'pacifico'),
              ),
              Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Text(
                    'Sign in',
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
                height: 25,
              ),
              CustomButton(
                label: 'Sign in',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have account ? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUp.id);
                      },
                      child: Text('click here',
                          style: TextStyle(color: Colors.blue))),
                ],
              ),
              Spacer(
                flex: 3,
              ),
            ],
          );
        }),
      ),
    );
  }
}
