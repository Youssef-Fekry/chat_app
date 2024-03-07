import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset('assets/images/scholar.png'),
          ),
          Text(
            'Scholar Chat',
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'pacifico'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
