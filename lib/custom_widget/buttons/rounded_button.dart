import 'dart:ffi';

import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, bgSGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  RoundButtonType type;
  double fontSize;
  double elevation;
  FontWeight fontWeight;
  double? size;

  RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.type = RoundButtonType.bgGradient,
      this.fontSize = 16,
      this.elevation = 1,
      this.fontWeight = FontWeight.w700,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white.withOpacity(0.50),
        // gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: const Alignment(0, 0.8),
        //     colors: <Color>[
        //       Colors.yellow[100]!,
        //       Colors.yellow[200]!,
        //       Colors.yellow[300]!,
        //     ]),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        textColor: Colors.black,
        minWidth: size ?? 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Text(
          title,
          style: TextStyle(),
        ),
      ),
    );
  }
}
