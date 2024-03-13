import 'package:chat_app_with_api/Widget/custom_button.dart';
import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;

  String? Password;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: OrientationBuilder(builder: (context, orientation) {
          return ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/scholar.png',
                // 'assets/images/result.png',
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
                onchange: (data) {
                  email = data;
                },
                hint: 'Email',
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFieald(
                onchange: (data) {
                  Password = data;
                },
                hint: 'Password',
              ),
              SizedBox(
                height: 25,
              ),
              CustomButton(
                onTap: () {},
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
              SizedBox(
                height: 30,
              ),
            ],
          );
        }),
      ),
    );
  }
}
