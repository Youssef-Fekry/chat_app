import 'package:flutter/material.dart';

class CustomTextFieald extends StatelessWidget {
  CustomTextFieald({super.key, required this.hint, required this.onchange});
  Function(String)? onchange;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onchange ,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}
