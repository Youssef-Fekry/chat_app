import 'package:chat_app_with_api/Widget/custom_button.dart';
import 'package:chat_app_with_api/Widget/custom_textfiled.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/helper/show_snakBar_message.dart';
import 'package:chat_app_with_api/screens/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  static String id = 'SignUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  kLogo,
                  // 'assets/images/result.png',
                  height: 100,
                ),
                Text(
                  'Scholar Chat',
                  // 'AboSafen Scout',
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
                  height: 5,
                ),
                // CustomTextFieald(
                //   hint: 'Confirm Password',
                // ),
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
                        Navigator.pushNamed(context, ChatPage.id);
                        ShowsnakBarMessage(
                            context, 'Account Created Successfully');
                      } on FirebaseAuthException catch (ex) {
                        if (ex.code == 'weak-password') {
                          ShowsnakBarMessage(context,
                              'The password provided is too weak Email already exists');
                        } else if (ex.code == 'email-already-in-use') {
                          ShowsnakBarMessage(context, 'Email already exists');
                        }
                      } catch (ex) {
                        ShowsnakBarMessage(
                            context, 'An unexpected error occured');
                      }
                      isLoading = false;
                      setState(() {});
                    } else {}
                  },
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
        ),
      ),
    );
  }

  Future<void> Authontication_User() async {
    final auth = FirebaseAuth.instance;
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
  }
}
