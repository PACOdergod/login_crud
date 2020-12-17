import 'package:flutter/material.dart';

class EmailController {
  final emailController = TextEditingController();

  void dispose() {
    emailController.dispose();
  }
}
