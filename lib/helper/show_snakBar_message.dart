import 'package:flutter/material.dart';

void ShowsnakBarMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      content: Text(
        message,
      ),
    ),
  );
}
