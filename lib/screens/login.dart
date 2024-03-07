import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/scholar.png'),
            ),
          ),
          Text(
            'Scholar Chat',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
