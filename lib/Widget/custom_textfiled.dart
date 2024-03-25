// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextFormFieald extends StatelessWidget {
  CustomTextFormFieald(
      {super.key,
      required this.hint,
      required this.onchange,
      required this.obsecuretext});
  Function(String)? onchange;
  final String? hint;
  final bool obsecuretext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecuretext,
      style: TextStyle(
        color: Colors.white,
      ),
      //use to validate
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field Is Required';
        }
      },
      onChanged: onchange,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey)),
      ),
    );
  }
}
