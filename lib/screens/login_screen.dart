import 'package:chat_app_with_api/Widget/custom_button.dart';
import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/helper/show_snakBar_message.dart';
import 'package:chat_app_with_api/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;

  String? password;

  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Form(
              key: formkey,
              child: ListView(
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
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'pacifico'),
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
                  CustomTextFormFieald(
                    onchange: (data) {
                      email = data;
                    },
                    hint: 'Email',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFormFieald(
                    onchange: (data) {
                      password = data;
                    },
                    hint: 'Password',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    onTap: () async {
                      if (formkey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        try {
                          await Authontication_User();
                          ShowsnakBarMessage(context, 'Login Successfully');
                        } on FirebaseAuthException catch (ex) {
                          if (ex.code == 'user-not-found') {
                            ShowsnakBarMessage(
                                context, 'No user found for that email.');
                          } else if (ex.code == 'wrong-password') {
                            ShowsnakBarMessage(context,
                                'Wrong password provided for that user');
                          }
                        } catch (ex) {
                          ShowsnakBarMessage(
                              context, 'An unexpected error occured');
                          print(ex);
                        }
                        isLoading = false;
                        setState(() {});
                      } else {}
                    },
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
              ),
            )),
      ),
    );
  }

  Future<void> Authontication_User() async {
    final auth = FirebaseAuth.instance;
    UserCredential user = await auth.signInWithEmailAndPassword(
        email: email!, password: password!);
  }
}
