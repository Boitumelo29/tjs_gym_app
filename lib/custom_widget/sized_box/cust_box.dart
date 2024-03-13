import 'dart:ffi';

import 'package:flutter/material.dart';

class CustBox extends StatelessWidget {
  int? height;
  int? width;

  CustBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null ? 10 : 5,
      width: width != null ? 0 : 0,
    );
  }
}
