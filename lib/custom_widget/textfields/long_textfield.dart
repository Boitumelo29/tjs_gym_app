import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  bool obscureText;
  final TextEditingController controller;

  MyTextField(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          hintText: hintText,
          suffixIcon: IconButton(
            onPressed: () {
              obscureText = !obscureText;
              print("pressed");
            },
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          )),
      obscureText: obscureText,
    );
  }
}
